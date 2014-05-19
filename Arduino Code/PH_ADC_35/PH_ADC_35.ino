/********************************************************
/****** Product Health - Battery Monitor Unit ***********
/****** by Matt Little **********************************
/****** Date: 19/12/13 **********************************
/****** info@re-innovation.co.uk ************************
/****** www.re-innovation.co.uk *************************
/********************************************************

/*************Details of Code*****************************

This is a prototype for a battery monitoring DAQ unit.
It is designed to measure 1 x temperatures 2 x Voltage and 1 x Current.
Temperatures are measured with a 10k thermistor.
Voltages are measured with a potential divider.
Current is measured with a hall-effect sensor.

There are two versions a single 'channel' (meaning 1 x temp, 2 x Voltages and 1 x current)
and a 4 'channel' (with 4 x temp, 8 x voltages, 4 x currents)

These are measured either with:
ADS1015. This communicates via I2C.
AD7390. This communicates via SPI.

The board is an Arduino (Uno bootloader).

Connection is vai RS485 converter (using a MAX485 IC).

Communication is via the MODBUS protocol.

There is an on-board EEPROM for on-the-fly reprogramming.

/************ Wiring Details *****************************

The circuit schematic should be available at www.re-innovation.co.uk

****** ADD FULL PIN WIRING HERE ********

Arduino ID  Actual Pin    Function
D0          2             Rx
D1          3             Tx 
D2          4             TEST switch
D3          5             ID3
D4          6             ID4
D5          11            ID5
D6          12            ID6
D7          13            ID7
D8          14            ID8
D9          15            ID1
D10         16            ~CS for EEPROM in I2C and ADC in SPI
D11         17            MOSI
D12         18            MISO
D13         19            SCLK

A0          23            TxEnable for RS485
A1          24            ID2
A2          25            LED1
A3          26            LED2
A4          27            SDA in I2C or ~CS for EEPROM in SPI
A5          28            SCLCK in I2C


//*****Code Examples Used:**************

//****** ADS1015 Code ******************
Adafurit ADS1015 break out board used
http://learn.adafruit.com/adafruit-4-channel-adc-breakouts/programming
The ADS1015 measures +/- 4.096V (differential). Full scale is 4.096V.

//******* AD7390 Code ******************
The ADC requires a control string to be written to the device.
This is 12 bits long. At the same time it will clock back the 
16 bit result from the previous conversion.
The 12 Control bits are:
WRITE :SEQ  :ADD3  :ADD2  :ADD1  :ADD0  :PM1  :PM0  :SHADOW  :WEAK  :RANGE  :CODING
11    :10   :9     :8     :7     :6     :5    :4    :3       :2     :1      :0
Which are set to:
1     :0    :0     :0     :0     :0     :1    :1    :1       :0     :0      :1
See the datasheet for full expalination of these.

Wiring for AD7390 in order for good PCB layout this is non-standard:
Data  ADC Input Line
T1.1  11
V1.1  10
V1.2  9
I1.1  8
T2.1  7
V2.1  6  
V2.2  5
I2.1  4  
T3.1  3
V3.1  2
V3.2  1
I3.1  0
T4.1  12
V4.1  13
V4.2  14
I4.1  15
  
//*********Thermistor code**************
From here:
http://www.arduino.cc/playground/ComponentLib/Thermistor2
 
//**********MODBUS Code*****************From here:
http://code.google.com/p/simple-modbus/

  Updates: 
  10/4/14   Changed ID for new ID switch layout - Matt Little
  10/4/14   Added SPI/I2C choice - Matt Little
  10/4/14   Added SPI code for reading AD7390 - Matt Little
  10/4/14   Flash LED 'heatbeat' - Matt Little
  6/5/14    Sorted out SPI reading code - Matt Little
  6/5/14    Sample rates for different versions - Matt Little
  7/5/14    Sorting out conversion - Matt Little
  7/5/14    Adding LEDs to show when MODBUS data received/sent - Matt Little
  
  
  To Do:
  EEPROM read/write - show it works.
  LEDs to show MODBUS data I/O - Need to change ModbusSlave library
  Check MODBUS data
    
  
********************************************************************/

#include <Wire.h>
#include <Adafruit_ADS1015.h>  // For the ADS1015 ADC
#include <math.h>  // To perform floating point calculations
#include <SPI.h> // Required for the AD7390 version
#include <SimpleModbusSlave.h>  // To implement MODBUS slave

//*********************************************************************//
//*************** VARIABLES TO CHANGE *********************************//
//*********************************************************************//
#define DEVICE "4CHANNEL"  //  Either use 1CHANNEL or 4CHANNEL
#define OUTPUTSTYLE "HUMAN"  // Either use HUMAN or RAW

//This holds the resistor values for the voltage potential dividers
// Values are in k ohm. The other resistor is 10k
// 8 values required - Voltages 1.1,1.2,2.1,2.2,3.1,3.2,4.1,4.2
const int voltResistors[] = {20,20,20,20,20,20,20,20};  

// This holds the current conversion value
// This is in mV per AMP
// 4 values required - I1,I2,I3,I4
const int currentConversions[] = {100,625,100,200};  

//**********************************************************************//
//************* END OF VARIABLES TO CHANGE *****************************//
//**********************************************************************//

#define TESTPIN 2  // Digital pin 10 is serial test on/off
#define TXENABLEPIN A0  // This controls the transmit enable (for MAX485 IC)
#define LED1 A2    // Output LED1 
#define LED2 A3    // Output LED2 
#define CSADCSPI 10      // Chip select pin for the SPI ADC
#define CSEEPROMSPI A4    // Chip select pin for the EEPROM with SPI ADC    
#define CSEEPROMI2C 10   // Chip select pin for the EEPROM with I2C ADC

#define NUMSAMPLESI2C 20  // This is the number of samples to average over I2C (slow) version
#define NUMSAMPLESSPI 200  // This is the number of samples to average over I2C (slow) version

unsigned int NUMSAMPLES = 0;  // Filled with data from above

// ADC info:
// I2C Version
// Adafruit_ADS1115 ads;  /* Use this for the 16-bit version */
Adafruit_ADS1015 ads1(0x48);     /* Use this for the 12-bit version */  
// SPI Version
// Does not need anything - not using a library

//Thermistor info:
// enumarating 3 major temperature scales
enum {
  T_KELVIN=0,
  T_CELSIUS,
  T_FAHRENHEIT
};
// manufacturer data for episco k164 10k thermistor
// simply delete this if you don't need it
// or use this idea to define your own thermistors
//#define EPISCO_K164_10k 4300.0f,298.15f,10000.0f  // B,T0,R0
#define GT_Thermistor_10k 4126.0f,298.15f,10000.0f  // B,T0,R0


//****** MODBUS INFO ****************
// Using the enum instruction allows for an easy method for adding and 
// removing registers. Doing it this way saves you #defining the size 
// of your slaves register array each time you want to add more registers
// and at a glimpse informs you of your slaves register layout.

//////////////// registers of your slave ///////////////////
enum 
{     
  // just add or remove registers and your good to go...
  // The first register starts at address 0
  TEMP1,     
  VOLTS11,
  VOLTS12,
  AMPS1, 
  TEMP2,     
  VOLTS21,
  VOLTS22,
  AMPS2,
  TEMP3,     
  VOLTS31,
  VOLTS32,
  AMPS3,
  TEMP4,     
  VOLTS41,
  VOLTS42,
  AMPS4,  
  HOLDING_REGS_SIZE // leave this one
  // total number of registers for function 3 and 16 share the same register array
  // i.e. the same address space
};

unsigned int holdingRegs[HOLDING_REGS_SIZE]; // function 3 and 16 register array
////////////////////////////////////////////////////////////

int ID = 0x00;    // This holdes the unit ID
int newID = 0x00; // This holds the ID to test each time - only change ID if newID is different

long oldMillis = 0;  // For the LED flashing

float Temp1 = 0;  // This holds the converted value of temperature
float Temp2 = 0;  // This holds the converted value of temperature
float Temp3 = 0;  // This holds the converted value of temperature
float Temp4 = 0;  // This holds the converted value of temperature
float Volts11 = 0;  // This holds the converted value of Voltage
float Volts12 = 0;  // This holds the converted value of Voltage
float Volts21 = 0;  // This holds the converted value of Voltage
float Volts22 = 0;  // This holds the converted value of Voltage
float Volts31 = 0;  // This holds the converted value of Voltage
float Volts32 = 0;  // This holds the converted value of Voltage
float Volts41 = 0;  // This holds the converted value of Voltage
float Volts42 = 0;  // This holds the converted value of Voltage
float Amps1 = 0;  // This holds the converted value of Current
float Amps2 = 0;  // This holds the converted value of Current
float Amps3 = 0;  // This holds the converted value of Current
float Amps4 = 0;  // This holds the converted value of Current

//int16_t adc0, adc1, adc2, adc3;  // These hold the raw ADC values

unsigned long int tempAve1,voltsAve11,voltsAve12,ampsAve1;
unsigned long int tempAve2,voltsAve21,voltsAve22,ampsAve2;
unsigned long int tempAve3,voltsAve31,voltsAve32,ampsAve3;
unsigned long int tempAve4,voltsAve41,voltsAve42,ampsAve4;

unsigned long int data1,data2;  // Hold result from ADC

int IDarray[] = {8,7,6,5,4,3,A1,9};  // This holds the configuration for the ID switch connections

void setup(void) 
{
  // Initialise the digital I/O
  pinMode(TESTPIN, INPUT_PULLUP);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);

  //An 8 bit switch is used as the device ID
  for(int i=0;i<8;i++)
  {
    pinMode(IDarray[i], INPUT_PULLUP);
  }
  
  //Sort out the ID from from the associated ID array
  ID=0;  // Reset the ID  
  ID = readID();   
  
  // Set up the ADC  
  if(DEVICE=="1CHANNEL")
  {
    //Set up sample rate
    NUMSAMPLES = NUMSAMPLESI2C;
    // This uses the I2C for ADC
    pinMode(CSEEPROMI2C, OUTPUT);    
    // The ADC input range (or gain) can be changed via the following
    // functions, but be careful never to exceed VDD +0.3V max, or to
    // exceed the upper and lower limits if you adjust the input range!
    // Setting these values incorrectly may destroy your ADC!
    //                                                                ADS1015  ADS1115
    //                                                                -------  -------
    // ads.setGain(GAIN_TWOTHIRDS);  // 2/3x gain +/- 6.144V  1 bit = 3mV      0.1875mV (default)
    ads1.setGain(GAIN_ONE);        // 1x gain   +/- 4.096V  1 bit = 2mV      0.125mV
    // ads.setGain(GAIN_TWO);        // 2x gain   +/- 2.048V  1 bit = 1mV      0.0625mV
    // ads.setGain(GAIN_FOUR);       // 4x gain   +/- 1.024V  1 bit = 0.5mV    0.03125mV
    // ads.setGain(GAIN_EIGHT);      // 8x gain   +/- 0.512V  1 bit = 0.25mV   0.015625mV
    // ads.setGain(GAIN_SIXTEEN);    // 16x gain  +/- 0.256V  1 bit = 0.125mV  0.0078125mV
    ads1.begin();
    
  }
  else if(DEVICE=="4CHANNEL")
  {
    //Set up sample rate
    NUMSAMPLES = NUMSAMPLESSPI;
    
    // This uses the SPI ADC
    pinMode(CSADCSPI, OUTPUT);   
    pinMode(CSEEPROMSPI, OUTPUT);      
    
    SPI.begin();
    // Data clocked on falling edge.
    // If the first bit sent is 1 then 
    // this is the CONTROL REGISTER
    
    digitalWrite(CSADCSPI,LOW);  
    //  send in the address and value via SPI:
    SPI.transfer(B10000011);
    SPI.transfer(B10010000);
    // take the SS pin high to de-select the chip:
    digitalWrite(CSADCSPI,HIGH); 
    
    //Then send the SHADOW REGISTER
    // Set the shadow register - all HIGH to read all channels
    digitalWrite(CSADCSPI,LOW);  
    //  send in the address and value via SPI:
    SPI.transfer(B11111111);
    SPI.transfer(B11111111);
    // take the SS pin high to de-select the chip:
    digitalWrite(CSADCSPI,HIGH);    
  }
  else
  {
    // Catch in case no DEVICE specified
    Serial.println("NO DEVICE");
  }
  
 // Set up the MODBUS slave device 
    /* parameters(HardwareSerial* SerialPort,
                long baudrate, 
		unsigned char byteFormat,
                unsigned char ID, 
                unsigned char transmit enable pin, 
                unsigned int holding registers size,
                unsigned int* holding register array)
  */
 
  /* Valid modbus byte formats are:
     SERIAL_8N2: 1 start bit, 8 data bits, 2 stop bits
     SERIAL_8E1: 1 start bit, 8 data bits, 1 Even parity bit, 1 stop bit
     SERIAL_8O1: 1 start bit, 8 data bits, 1 Odd parity bit, 1 stop bit
     
     You can obviously use SERIAL_8N1 but this does not adhere to the
     Modbus specifications. That said, I have tested the SERIAL_8N1 option 
     on various commercial masters and slaves that were suppose to adhere
     to this specification and was always able to communicate... Go figure.
     
     These byte formats are already defined in the Arduino global name space. 
  */
  modbus_configure(&Serial, 115200, SERIAL_8N2, ID, TXENABLEPIN, HOLDING_REGS_SIZE, holdingRegs);    
  
  // If we are in test mode then output data on the serial port
  // Otherwise dont
  if(digitalRead(TESTPIN)==LOW)
  {
    Serial.println("Product Health");
    Serial.println("MODBUS Battery Monitor"); 
    Serial.println("Version 1.0");
    Serial.println("Matt Little (matt@re-innovation.co.uk)");
    if(DEVICE=="1CHANNEL")
    {
      Serial.println("1 Channel Device");
      Serial.println("I2C ADC Range: +/- 4.096V (Gain = 1x)");
    }
    else if(DEVICE=="4CHANNEL")
    {
      Serial.println("4 Channel Device");
      Serial.println("SPI ADC Range: ???");
    }    
    Serial.print("Device ID: ");
    Serial.println(ID);
  }
 
}

void loop(void) 
{
  // Take readings depending upon the device used (1CHANNEL or 4CHANNEL)
  
  for(int j=0;j<NUMSAMPLES;j++)
  {
    
    if(DEVICE=="1CHANNEL")
    {    
      // READ I2C ADC
      tempAve1 += ads1.readADC_SingleEnded(0);
      voltsAve11 += ads1.readADC_SingleEnded(1);
      voltsAve12 += ads1.readADC_SingleEnded(2);
      ampsAve1 += ads1.readADC_SingleEnded(3);
    }
    else if(DEVICE=="4CHANNEL")
    {
      // READ SPI ADC
      // Here we can ask for data and see what we get back.
      // take the SS pin low to select the chip:
      for(int y=0;y<16;y++)
      {
        
        // Data clocked on falling edge.
        // Data transferred to output
        // First 4 bits are the address bits 
        // Next 12 bits are data
        digitalWrite(CSADCSPI,LOW);  
        //  send in the address and value via SPI:
        data1 = SPI.transfer(B00000000);
        data2 = SPI.transfer(B00000000);
        // take the SS pin high to de-select the chip:
        digitalWrite(CSADCSPI,HIGH); 
      
//        Serial.print("Channel ");
//        // Want to get the first 4 binary digits       
//        Serial.print(data1>>4);
//        Serial.print(": "); 
        
        // Data is in the format:
        // Data1 =  ID ID ID ID D11 D10 D9 D8
        // Data2 =  D7 D6 D5 D4 D3  D2  D1 D0
        
        // So to get the data out we need to AND data1 with a mask
        // Then left shift 8 bits
        // Then add data2
        
        //Serial.println(data1,BIN);
        data1 = data1 & B00001111;          
        //Serial.println(data1,BIN);
        data1 = data1<<8;         
        //Serial.println(data1,BIN);
        data1 = data1+data2;
        
        //Serial.println(data1); 
     
        switch(y)
        {
          case 0:
            ampsAve3 += data1;
          break;
          case 1:
            voltsAve32 += data1;
          break;
          case 2:
            voltsAve31 += data1;
          break;
          case 3:
            tempAve3 += data1;
          break;
          case 4:
            ampsAve2 += data1;
          break;
          case 5:
            voltsAve22 += data1;
          break;
          case 6:
            voltsAve21 += data1;
          break;
          case 7:
            tempAve2 += data1;
          break;
          case 8:
            ampsAve1 += data1;
          break;
          case 9:
            voltsAve12 += data1;
          break;
          case 10:
            voltsAve11 += data1;
          break;
          case 11:      
            tempAve1 += data1;
          break;
          case 12:
            tempAve4 += data1;
          break;
          case 13:
            voltsAve41 += data1;
          break;
          case 14:
            voltsAve42 += data1;
          break;
          case 15:
            ampsAve4 += data1;
          break;
        }
        
        data1 = 0;
        data2 = 0;        
      }  
    }  
    // Sort out the MODBUS information
     // modbus_update() is the only method used in loop(). It returns the total error
    // count since the slave started. You don't have to use it but it's useful
    // for fault finding by the modbus master.
    modbus_update();
    // MODBUS Commands (sent from Master:
    // Get Data from channel 1: 0x 02 03 0000 0004 443a
    // Get Data from channel 2: 0x 02 03 0004 0004 05fb
    // Get Data from channel 3: 0x 02 03 0008 0004 c5f8
    // Get Data from all channels: 0x 02 03 0000 000c 45fc
    //
    /* Note:
       The use of the enum instruction is not needed. You could set a maximum allowable
       size for holdinRegs[] by defining HOLDING_REGS_SIZE using a constant and then access 
       holdingRegs[] by "Index" addressing. 
       I.e.
       holdingRegs[0] = analogRead(A0);
       analogWrite(LED, holdingRegs[1]/4);
    */
  }
  
  // Here we divide through to get the average:
  if(DEVICE=="1CHANNEL"||DEVICE=="4CHANNEL")
  {
    tempAve1 = tempAve1/NUMSAMPLES;
    voltsAve11 = voltsAve11/NUMSAMPLES;
    voltsAve12 = voltsAve12/NUMSAMPLES;
    ampsAve1 = ampsAve1/NUMSAMPLES;
    
    // Store data for MODBUS
    holdingRegs[TEMP1] = tempAve1;     // update data to be read by the master 
    holdingRegs[VOLTS11] = voltsAve11; // update data to be read by the master 
    holdingRegs[VOLTS12] = voltsAve12; // update data to be read by the master 
    holdingRegs[AMPS1] = ampsAve1;     // update data to be read by the master
  }
  if(DEVICE=="4CHANNEL")
  {
    tempAve2 = tempAve2/NUMSAMPLES;
    voltsAve21 = voltsAve21/NUMSAMPLES;
    voltsAve22 = voltsAve22/NUMSAMPLES;
    ampsAve2 = ampsAve2/NUMSAMPLES;
    tempAve3 = tempAve3/NUMSAMPLES;
    voltsAve31 = voltsAve31/NUMSAMPLES;
    voltsAve32 = voltsAve32/NUMSAMPLES;
    ampsAve3 = ampsAve3/NUMSAMPLES;
    tempAve4 = tempAve4/NUMSAMPLES;
    voltsAve41 = voltsAve41/NUMSAMPLES;
    voltsAve42 = voltsAve42/NUMSAMPLES;
    ampsAve4 = ampsAve4/NUMSAMPLES;
    
    // Store data for MODBUS
    holdingRegs[TEMP2] = tempAve2;     // update data to be read by the master 
    holdingRegs[VOLTS21] = voltsAve21; // update data to be read by the master 
    holdingRegs[VOLTS22] = voltsAve22; // update data to be read by the master 
    holdingRegs[AMPS2] = ampsAve2;     // update data to be read by the master
    holdingRegs[TEMP3] = tempAve3;     // update data to be read by the master 
    holdingRegs[VOLTS31] = voltsAve31; // update data to be read by the master 
    holdingRegs[VOLTS32] = voltsAve32; // update data to be read by the master 
    holdingRegs[AMPS3] = ampsAve3;     // update data to be read by the master
    holdingRegs[TEMP4] = tempAve4;     // update data to be read by the master 
    holdingRegs[VOLTS41] = voltsAve41; // update data to be read by the master 
    holdingRegs[VOLTS42] = voltsAve42; // update data to be read by the master 
    holdingRegs[AMPS4] = ampsAve4;     // update data to be read by the master   
  }
 
  //******Check TEST MODE *****
  // Test mode puts the data out on the serial line
  // This means no MODBUS master is required
  // Used only for testing that data is correct and in correct range
  // If TESTPIN is LOW then enter test mode

  if(digitalRead(TESTPIN)==LOW)
  {       
    
    // Print the data to the serial port
    digitalWrite(TXENABLEPIN, HIGH);  // Need to enable transmission
    digitalWrite(LED2,HIGH);  // Switch ON the LED
    if(OUTPUTSTYLE=="HUMAN")
    {
      // HUMAN READABLE
      Serial.print(ID);
      Serial.print(',');
      Serial.print(Temperature(tempAve1,T_CELSIUS,GT_Thermistor_10k,10000.0f));
      Serial.print(',');
      Serial.print(Voltage(voltsAve11,0));
      Serial.print(',');
      Serial.print(Voltage(voltsAve12,1));
      Serial.print(',');
      Serial.print(Current(ampsAve1,0));
      // Only want to show the next values if 4 CHANNEL device
      if(DEVICE=="4CHANNEL")
      {
        Serial.print(',');
        Serial.print(Temperature(tempAve2,T_CELSIUS,GT_Thermistor_10k,10000.0f));
        Serial.print(',');
        Serial.print(Voltage(voltsAve21,2));
        Serial.print(',');
        Serial.print(Voltage(voltsAve22,3));
        Serial.print(',');
        Serial.print(Current(ampsAve2,1));
        Serial.print(',');
        Serial.print(Temperature(tempAve3,T_CELSIUS,GT_Thermistor_10k,10000.0f));
        Serial.print(',');
        Serial.print(Voltage(voltsAve31,4));
        Serial.print(',');
        Serial.print(Voltage(voltsAve32,5));
        Serial.print(',');
        Serial.print(Current(ampsAve3,2));
        Serial.print(',');
        Serial.print(Temperature(tempAve4,T_CELSIUS,GT_Thermistor_10k,10000.0f));
        Serial.print(',');
        Serial.print(Voltage(voltsAve41,6));
        Serial.print(',');
        Serial.print(Voltage(voltsAve42,7));
        Serial.print(',');
        Serial.print(Current(ampsAve4,3));
      }  
      Serial.println();  // End the line with a CR 
    }
    else
    { 
      // RAW DATA
      Serial.print(ID);
      Serial.print(',');
      Serial.print(tempAve1);
      Serial.print(',');
      Serial.print(voltsAve11);
      Serial.print(',');
      Serial.print(voltsAve12);
      Serial.print(',');
      Serial.print(ampsAve1);
      
       // Only want to show the next values if 4 CHANNEL device
      if(DEVICE=="4CHANNEL")
      {
        Serial.print(',');
        Serial.print(tempAve2);
        Serial.print(',');
        Serial.print(voltsAve21);
        Serial.print(',');
        Serial.print(voltsAve22);
        Serial.print(',');
        Serial.print(ampsAve2);
        Serial.print(',');
        Serial.print(tempAve3);
        Serial.print(',');
        Serial.print(voltsAve31);
        Serial.print(',');
        Serial.print(voltsAve32);
        Serial.print(',');
        Serial.print(ampsAve3);
        Serial.print(',');
        Serial.print(tempAve4);
        Serial.print(',');
        Serial.print(voltsAve41);
        Serial.print(',');
        Serial.print(voltsAve42);
        Serial.print(',');
        Serial.print(ampsAve4);
      } 
      Serial.println();  // End the line with a CR 
    }
    digitalWrite(TXENABLEPIN, LOW); // Need to disable transmission
    digitalWrite(LED2,LOW);  // Switch ON the LED
  }
  
  // RESET DATA
  // Here we reset all the averages, ready for the next set
  tempAve1 = 0;
  voltsAve11 = 0;
  voltsAve12 = 0;
  ampsAve1 = 0;
  tempAve2 = 0;
  voltsAve31 = 0;
  voltsAve22 = 0;
  ampsAve2 = 0;
  tempAve3 = 0;
  voltsAve31 = 0;
  voltsAve32 = 0;
  ampsAve3 = 0;
  tempAve4 = 0;
  voltsAve41 = 0;
  voltsAve42 = 0;
  ampsAve4 = 0;
  
  // Check the device ID digital pins.
  // Have they changed?
  checkID();
  
  // Flash the LED to show its all working
  flashLED();
  
}

// Voltage function outputs float , the actual voltage  
// The input is the ADC value and the channel number
// Each channel relates to a different load resistor value
// This is defined at the start

float Voltage(int16_t Input, int channel)
{
  float Vin,Vout;
  
  // This design has:
  // +Vinput ----- Rbk ---- Vmeasured ----- 10k ----- Gnd

  // So we calculate voltage:
  if(DEVICE=="1CHANNEL")
  {
    Vin = float(Input)*4.096/2048;
  }
  else if(DEVICE=="4CHANNEL")
  {
    Vin = float(Input)*5.0/4095;
  }
  
  Vout = (Vin*(voltResistors[channel]+1))/1;
  
  return Vout;
}

// Current function outputs float, the actual current  
// The input is the ADC value and a channel value so each can be different
// 

float Current(int16_t Input, int channel)
{
  float Vin,Iout;
  
  // This design uses a Hall Effect Sensor
  // Output voltage is 100mV/Amp
  
  // So we calculate voltage:
  if(DEVICE=="1CHANNEL")
  {
    Vin = float(Input)*4.096/2048;
  }
  else if(DEVICE=="4CHANNEL")
  {
    Vin = float(Input)*5.0/4095;
  }
  
  Iout = ((Vin-1.25)*1000)/currentConversions[channel];
  
  return Iout;
}

// Temperature function outputs float , the actual
// temperature
// Temperature function inputs
// 1.Input - The data to convert (as an int16_t)
// 2.OuputUnit - output in celsius, kelvin or fahrenheit
// 3.Thermistor B parameter - found in datasheet
// 4.Manufacturer T0 parameter - found in datasheet (kelvin)
// 5. Manufacturer R0 parameter - found in datasheet (ohms)
// 6. Your balance resistor resistance in ohms  

float Temperature(int16_t Input,int OutputUnit,float B,float T0,float R0,float R_Balance)
{
  float R,T,V;
  
  // This design has:
  // +2.5V ----- 10k precsision ---- Vmeasured ----- Thermistor ----- Gnd
  // The 2.5V is from an accurate reference.
  // The 10k precision is 0.1% tolerance
  
  if(DEVICE == "1CHANNEL")
  {
    // The conversion within the ADC is FSD = 4.096V
    // The 2048 comes from the output value with single ended values
    // So we calculate voltage:
    V = float(Input)*4.096/2048;
  }
  else if(DEVICE == "4CHANNEL")
  {
     // The conversion within the ADC is FSD = 2 x 2.5V = 5.00V
    // So we calculate voltage:
    V = float(Input)*5.0/4095;
  }
  // Which is used to calculate resistance:
  R = (V*R_Balance)/(2.5-V); 
  
  T=1.0f/(1.0f/T0+(1.0f/B)*log(R/R0));

  switch(OutputUnit) 
  {
    case T_CELSIUS :
      T-=273.15f;
    break;
    case T_FAHRENHEIT :
      T=9.0f*(T-273.15f)/5.0f+32.0f;
    break;
    default:
    break;
  };

  return T;
}

// This function check of the ID switch
// It restarts the MODBUS if the ID has changed

void checkID()
{
  //Sort out the ID from the switch value
  newID=0;  // Reset the ID 
  newID = readID();
  if(newID!=ID)
  {
    Serial.flush();  // Stop and flush out all the serial data
    Serial.end();
    
    ID = newID;  // Update for the new ID
    //Serial.println("ID NOT correct - Restarting MODBUS!!!");
    modbus_configure(&Serial, 115200, SERIAL_8N2, ID, TXENABLEPIN, HOLDING_REGS_SIZE, holdingRegs);    
  
  }
} 

// This reads the digital pins set up for the ID
// Made into a routine as this is used in different parts of the code
int readID()
{
  int tempID= 0x00;
  
  for(int i=0;i<8;i++)
  {
    // Check each dgital line
    if(digitalRead(IDarray[i])==HIGH)
    {      
      tempID+=(0b00000001<<(i));
    }      
  } 
  return(tempID);
} 
 
// This flashes the LED based upon the timer millis()
void flashLED()
{
  if(millis()>(oldMillis+1000))
  {
    digitalWrite(LED1,HIGH);    
  }
  if(millis()>(oldMillis+1200))
  {
    digitalWrite(LED1,LOW);
    oldMillis=millis();
  } 
}  
  
