rem Can add -P COM13 to manually specify com port
avrdude -p ATMEGA2560 -P COM12 -c wiring -V -U flash:w:"firmware.hex":i -D
pause