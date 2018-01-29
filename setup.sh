#!/bin/bash
		

if [[ -f "config" ]]; then
WALLET_ADDRESS=$(whiptail --inputbox "Please enter your ethereum wallet address" 8 78 --title "Setup" 3>&1 1>&2 2>&3)
WATCHDOG_HOME=$(whiptail --inputbox "Please enter directory for watchdog home" 8 78 --title "Setup" 3>&1 1>&2 2>&3)
fi
echo "WATCH_DOG_HOME=$WATCHDOG_HOME" > config
echo "ETH_WALLET=$WALLET_ADDRESS" >> config
