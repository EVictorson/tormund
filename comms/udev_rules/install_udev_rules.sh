#!/bin/bash

echo "Deleting previous udev rules if they exist..."
sudo rm /etc/udev/rules.d/99-arduino-uno-serial.rules
sudo rm /etc/udev/rules.d/99-rplidara2.rules

echo "Copying udev rules..."
sudo cp 99-arduino-uno-serial.rules /etc/udev/rules.d
sudo cp 99-rplidara2.rules /etc/udev/rules.d

sudo udevadm control --reload-rules && sudo service udev restart && sudo udevadm trigger
echo "Done!"
