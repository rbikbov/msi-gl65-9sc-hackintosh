# MSI GL65 9SC

## System configuration

| BIOS ver.                 | 16U4EMS1.102                   |
|-                          |-                               |
| MacOS Version             | Monterey 12.6                  |
| SystemProductName         | MacBookPro16,3                 |
| Processor                 | Intel Core i5-9300H            |
| Graphics                  | UHD Graphics 630               |
| Memory                    | 2667MHz DDR4 2x8GB             |
| OS Disk                   | WDC PC SN520 NVMe              |
| Audio                     | Realtek ALC269                 |
| WiFi/Bluetooth            | ~~Intel 9560NGW~~ bcm943602cs  |

## TODO:
- [x] ~~full disabling discrete GPU (GTX 1650) after wake up (light indicator in power button must be white instead of yellow)~~  
- [ ] update OpenCore and kexts  
- [ ] clear config.plist  
- [ ] recheck all SSDTs  
- [x] ~~fix HDMI audio~~  

## FANs speed related info

[YoyPa/isw](https://github.com/YoyPa/isw/wiki/MSI-G-laptop-EC---Rosetta)  
[acidanthera/VirtualSMC/Docs/EmbeddedControllers.md](https://github.com/acidanthera/VirtualSMC/blob/a4de142261f2ea9a7d65be077f796e10bef67590/Docs/EmbeddedControllers.md)  


## Useful apps
- Multitouch  
- iStatMenus  
- NTFS for Mac (Paragon)  
- SpeakerAMP  
- Wineskin  
- Android File Transfer  
- SoundSource  
- CleanMyMac  


## Useful utils
- [VoltageShift](https://github.com/zspherez/VoltageShift)  
  My undervoltage settings
  ```
  ./voltageshift offset <CPU> <GPU> <CPUCache> <SystemAgent> <Analogy I/O> <Digital I/O>
  ./voltageshift offset -120 -75 -120 0 0 0

  sudo ./voltageshift buildlaunchd <CPU> <GPU> <CPUCache> <SA> <AI/O> <DI/O> <turbo> <pl1> <pl2> <remain> <UpdateMins (0 only apply at bootup)>
  sudo ./voltageshift buildlaunchd -120 -75 -120 0 0 0 1 -1 -1 1 30
  ```
