Water Cooled Raspberry Pi 4
===========================
<p float="left">
<img src = "Project Photo/img_1.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_2.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_3.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_4.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_5.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_6.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_7.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_8.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_9.jpg" width = "200" height = "400" />
<img src = "Project Photo/img_10.jpg" width = "200" height = "400" />
</p>
Created by E-Protocol
https://github.com/e-protocol

Description 
--------------
Specs: Raspberry OS, Arduino
This is a project for better raspberry pi 4 cooling. During my tests the maximum CPU 
temperature was 34℃!

Components:
--------------
- Power Supply 
Based on this Arduino Nano project:
https://github.com/e-protocol/microPowerSupplyMonitor
Input: 12V 3A, Output: 12V, 5V
Connected with USB 2.0 cable
- M2 SSD 128Gb
Works really fast! MicroSD is too slow. Connected with USB 3.0 cable
- 5V Fan 120mm
- 5mm white led
- Water cooling pump 12V
- Radiator 120mm
- Cooling case for SSD - 4 slots
- Raspberry Pi 4 8Gb
- water fittings 10.5mm inner size
- silicon pipe 10.5mm inner size
- 30mm processor water block
- various USB cables and heat sinks


cpuTemp
--------------
This is a little programm to send cpu temperature to powerSupply over Serial, so
Arduino can display it.
Just run make in cpuTemp folder and dont't forget to make cpuTemp file executable
sudo chmod +x cpuTemp


Autostart cpuTemp
--------------
To run cpuTemp on start up:
1) sudo gedit /etc/xdg/lxsession/LXDE-pi/autostart
2) add any script or command at last line, i.e.:
@lxterminal --command="/home/pi/cpuTemp"

stressTest
--------------
This is a script to test Raspberry cooling efficiency. It requires sysbench
package to use. Tests with 8 threads for 5 minutes.
Just run ./stressTest.sh
