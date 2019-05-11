#!/bin/bash

cd /etc/udev/rules.d
sudo ln -s ~/vcs/tormund/comms/udev_rules/99-arduino-uno-serial.rules 99-arduino-uno-serial.rules
sudo ln -s ~/vcs/tormund/comms/udev_rules/99-rplidara2.rules 99-rplidara2.rules

sudo udevadm control --reload
