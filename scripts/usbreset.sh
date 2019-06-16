#!/bin/bash
echo 0 | sudo tee /sys/bus/usb/devices/$1/authorized
echo 1 | sudo tee /sys/bus/usb/devices/$1/authorized
