@echo off
color b

echo Starting macro...
echo Click "Allow"
start ./macro/Main.ahk
timeout 5
color a
echo Loading macro...
timeout 3
echo The macro should load any second now...
timeout 5
color c
echo If the macro hasn't loaded yet, try reinstalling.
timeout 3
exit