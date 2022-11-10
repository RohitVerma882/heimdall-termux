# heimdall-termux

Building heimdall for termux with no root

### How to use?

1. Install termux and termux-api app from f-droid or github release

2. Install termux api package

   ```pkg install termux-api```

3. Put your target samsung galaxy device into download-mode and connect using USB otg cable

4. On your host device run termux command

   ```termux-usb -l```
   
5. Copy deviceName example: ```dev/bus/usb/*``` and run command
   
   ```termux-usb -r dev/bus/usb/*```
   
6. Check device detect

   ```heimdall detect```

7. Now run heimdall commands like: ```heimdall flash --RECOVERY recovery.img --no-reboot```

Note: You need to follow these steps again from ```4``` if device is reconnected 
