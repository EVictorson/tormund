#!/bin/bash

echo "Copying udev rules..."
sudo cp 99-arduino-uno-serial.rules /etc/udev/rules.d
sudo cp 99-rplidara2.rules /etc/udev/rules.d

sudo udevadm control --reload
echo "Done!"
