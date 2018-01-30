# mining-rig-watchdog
Cryptocurrency Mining Rig Physical Watchdog. 
Uses a Raspberry Pi hard wired onto the motherboard of a mining rig and a switch to reset if communication is lost with Claymore. Also includes a TUI to do manual resets.

## Prerequisites
### Hardware
* Raspberry Pi 2 Model B 
  * Any Raspberri Pi will do, although the GPIO pin numbers may be different.
* [4 Channel DC 5V Relay Module](http://a.co/g4PvWE6)
  * This allows the Pi to safely "press" the power button on a motherboard.
* [Iot Relay](http://a.co/ge42GJ0)
  * Enables the Pi to powercycle all the hardware compontents (basically, lets the Pi "flip" the surge protector switch).
  
