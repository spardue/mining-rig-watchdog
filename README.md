# mining-rig-watchdog

<img src="https://user-images.githubusercontent.com/1810461/35637543-80db0f18-0682-11e8-8d9e-3fdbf403f800.jpg" width="300px"/>

Cryptocurrency Mining Rig Physical Watchdog. 
Uses a Raspberry Pi hard wired onto the motherboard of a mining rig and a switch to reset if communication is lost with Claymore. Also includes a TUI to do manual resets.

## Prerequisites
### Hardware
* Raspberry Pi 2 Model B 
  * Any Raspberri Pi will do, although the GPIO pin numbers may be different.
* [4 Channel DC 5V Relay Module](http://a.co/g4PvWE6)
  * This allows the Pi to safely "press" the power button on a motherboard.
* [Iot Relay](http://a.co/ge42GJ0)
  * Enables the Pi to powercycle all the hardware components (basically, lets the Pi "flip" the surge protector switch).
### Software
* [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) installed on the Pi.
* [The GPIO Utility](http://wiringpi.com/download-and-install/) installed on the Pi.

## Install
### Software
1. Login to the pi using the pi user.
2. Add the pi user to the crontab group.
3. Clone/or extract zip this repo under /home/pi.
4. Run the setup script to setup environment variables.
5. Add the following cron jobs by running `crontab -e`:
```
*/15 * * * * /home/pi/mining-rig-watchdog/watchdog
* 0 0 * * * /home/pi/mining-rig-watchdog/reset
```

