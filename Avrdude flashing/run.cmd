rem Can add -P COM13 to manually specify com port
avrdude -p ATMEGA2560 -c arduino -V -U flash:w:"firmware.hex":i
pause