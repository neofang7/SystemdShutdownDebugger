This tool set is developed by NeoFang to analyze shutdown issue in Ostro platform.
Because occasionally, Ostro's shutdown processes unstable.

#1. Kernel boot option should add the following command:
'systemd.log_level=debug systemd.log_target=kmsg log_buf_len=1M enforcing=0'
In Ostro, it requires to rebuild the image.
#2. copy script/debug.sh to /lib/systemd/system-shutdown in ostro. DO NOT forget to enable debug.sh executable.
#3. copy script/autoreboot.sh to /usr/bin/autoreboot.sh. NOTICE: executable mode change.
#4. copy script/autoreboot.service to /lib/systemd/system and `systemctl enable autoreboot.service`
#5. reboot the system. It will continue to poweroff and poweron about 10 times. 
#   10 shutdown.txt.* files will be generated under /shutdown. Scp this folder
#6. `python tool/SystemdLog-marshal.py shutdown` to check the result.



