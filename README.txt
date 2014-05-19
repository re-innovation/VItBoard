This is the github repository for the lagre 7 segment LED board.
This project has been started by Matt Little from Renewable Energy Innovation.
Contact:
www.re-innovation.co.uk
matt@re-innovation.co.uk

Overview:

This kit contains a large 1.8" 7 segment LED uni, along with a shift register and power control.

It uses the Serial Shift output to control a 7 segment LED display
Data is shifted out serially and only when all the shift registers are filled does the latch cause
the LED outputs to update.
The LED boards require 12V supply as they contain strings of 4 LEDs.
The wiring for each board is as follows (P1 and P2):

  Pin 1  ->  Serial LATCH -> A3 on Arduino (in this example)
  Pin 2  ->  Serial CLOCK -> A5 on Arduino (in this example)
  Pin 3  ->  Serial DATA  -> A4 on Arduino (in this example)  
  Pin 4  ->  GROUND       -> GND on Arduino
  Pin 5  ->  +5V          -> +5V on Arduino
  Pin 6  ->  GROUND       -> GND for LED supply
  Pin 7  ->  +12V         -> +12V for LED supply

Use a 0.1uF capacitor between Pin 1 (sLATCH) and Pin 4 (GND) to prevent flicker on the display.

see www.re-innovation.co.uk for more details


Files in the repository:
	
	Readme
	PCB files for KiCAD
	Example Arduino code


Modified:



To Do:

Add stabilisation capacitor on last LED node. 