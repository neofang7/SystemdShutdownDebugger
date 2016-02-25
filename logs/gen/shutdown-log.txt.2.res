SystemdLog File logs/shutdown-log.txt.2
	Section INS_TRANS: [562.068540 - 562.087924] = 0.019384
	Section EXE_TRANS: [562.087924 - 563.588698] = 1.500774
	Section FORCE_SHUT: [563.588698 - 564.195773] = 0.607075

========== Install Transaction ===========
-[  562.072322] systemd[1]  ldconfig.service: Looking at job ldconfig.service/start conflicted_by=no
-[  562.072376] systemd[1]  ldconfig.service: Looking at job ldconfig.service/stop conflicted_by=no
-[  562.072392] systemd[1]  ldconfig.service: Fixing conflicting jobs ldconfig.service/start,ldconfig.service/stop by deleting job ldconfig.service/stop
-[  562.072418] systemd[1]  var-volatile.mount: Looking at job var-volatile.mount/start conflicted_by=no
-[  562.072430] systemd[1]  var-volatile.mount: Looking at job var-volatile.mount/stop conflicted_by=no
-[  562.072444] systemd[1]  var-volatile.mount: Fixing conflicting jobs var-volatile.mount/start,var-volatile.mount/stop by deleting job var-volatile.mount/stop
-[  562.072469] systemd[1]  systemd-journal-catalog-update.service: Looking at job systemd-journal-catalog-update.service/start conflicted_by=no
-[  562.072482] systemd[1]  systemd-journal-catalog-update.service: Looking at job systemd-journal-catalog-update.service/stop conflicted_by=no
-[  562.072496] systemd[1]  systemd-journal-catalog-update.service: Fixing conflicting jobs systemd-journal-catalog-update.service/start,systemd-journal-catalog-update.service/stop by deleting job systemd-journal-catalog-update.service/stop
-[  562.072520] systemd[1]  halt.service: Looking at job halt.service/start conflicted_by=no
-[  562.072532] systemd[1]  halt.service: Looking at job halt.service/stop conflicted_by=no
-[  562.072545] systemd[1]  halt.service: Fixing conflicting jobs halt.service/start,halt.service/stop by deleting job halt.service/stop
-[  562.072558] systemd[1]  sysinit.target: Deleting job sysinit.target/stop as dependency of job halt.service/stop
-[  562.072585] systemd[1]  tmp.mount: Looking at job tmp.mount/start conflicted_by=no
-[  562.072597] systemd[1]  tmp.mount: Looking at job tmp.mount/stop conflicted_by=no
-[  562.072610] systemd[1]  tmp.mount: Fixing conflicting jobs tmp.mount/start,tmp.mount/stop by deleting job tmp.mount/stop
-[  562.072635] systemd[1]  systemd-tmpfiles-setup-dev.service: Looking at job systemd-tmpfiles-setup-dev.service/start conflicted_by=no
-[  562.072647] systemd[1]  systemd-tmpfiles-setup-dev.service: Looking at job systemd-tmpfiles-setup-dev.service/stop conflicted_by=no
-[  562.072661] systemd[1]  systemd-tmpfiles-setup-dev.service: Fixing conflicting jobs systemd-tmpfiles-setup-dev.service/start,systemd-tmpfiles-setup-dev.service/stop by deleting job systemd-tmpfiles-setup-dev.service/stop
-[  562.072686] systemd[1]  systemd-hwdb-update.service: Looking at job systemd-hwdb-update.service/start conflicted_by=no
-[  562.072698] systemd[1]  systemd-hwdb-update.service: Looking at job systemd-hwdb-update.service/stop conflicted_by=no
-[  562.072712] systemd[1]  systemd-hwdb-update.service: Fixing conflicting jobs systemd-hwdb-update.service/start,systemd-hwdb-update.service/stop by deleting job systemd-hwdb-update.service/stop
-[  562.072737] systemd[1]  systemd-update-utmp-runlevel.service: Looking at job systemd-update-utmp-runlevel.service/start conflicted_by=no
-[  562.072750] systemd[1]  systemd-update-utmp-runlevel.service: Looking at job systemd-update-utmp-runlevel.service/stop conflicted_by=no
-[  562.072763] systemd[1]  systemd-update-utmp-runlevel.service: Fixing conflicting jobs systemd-update-utmp-runlevel.service/start,systemd-update-utmp-runlevel.service/stop by deleting job systemd-update-utmp-runlevel.service/stop
-[  562.072777] systemd[1]  systemd-update-utmp.service: Deleting job systemd-update-utmp.service/stop as dependency of job systemd-update-utmp-runlevel.service/stop
-[  562.072803] systemd[1]  systemd-ask-password-console.path: Looking at job systemd-ask-password-console.path/start conflicted_by=no
-[  562.072815] systemd[1]  systemd-ask-password-console.path: Looking at job systemd-ask-password-console.path/stop conflicted_by=no
-[  562.072829] systemd[1]  systemd-ask-password-console.path: Fixing conflicting jobs systemd-ask-password-console.path/start,systemd-ask-password-console.path/stop by deleting job systemd-ask-password-console.path/stop
-[  562.072854] systemd[1]  umountfs.service: Looking at job umountfs.service/start conflicted_by=no
-[  562.072866] systemd[1]  umountfs.service: Looking at job umountfs.service/stop conflicted_by=no
-[  562.072879] systemd[1]  umountfs.service: Fixing conflicting jobs umountfs.service/start,umountfs.service/stop by deleting job umountfs.service/stop
-[  562.072905] systemd[1]  systemd-sysusers.service: Looking at job systemd-sysusers.service/start conflicted_by=no
-[  562.072918] systemd[1]  systemd-sysusers.service: Looking at job systemd-sysusers.service/stop conflicted_by=no
-[  562.072931] systemd[1]  systemd-sysusers.service: Fixing conflicting jobs systemd-sysusers.service/start,systemd-sysusers.service/stop by deleting job systemd-sysusers.service/stop
-[  562.072957] systemd[1]  var-lib-machines.mount: Looking at job var-lib-machines.mount/start conflicted_by=no
-[  562.072969] systemd[1]  var-lib-machines.mount: Looking at job var-lib-machines.mount/stop conflicted_by=no
-[  562.072982] systemd[1]  var-lib-machines.mount: Fixing conflicting jobs var-lib-machines.mount/start,var-lib-machines.mount/stop by deleting job var-lib-machines.mount/stop
-[  562.073061] systemd[1]  swap.target: Looking at job swap.target/start conflicted_by=no
-[  562.073073] systemd[1]  swap.target: Looking at job swap.target/stop conflicted_by=no
-[  562.073085] systemd[1]  swap.target: Fixing conflicting jobs swap.target/start,swap.target/stop by deleting job swap.target/stop
-[  562.073112] systemd[1]  systemd-machine-id-commit.service: Looking at job systemd-machine-id-commit.service/start conflicted_by=no
-[  562.073125] systemd[1]  systemd-machine-id-commit.service: Looking at job systemd-machine-id-commit.service/stop conflicted_by=no
-[  562.073139] systemd[1]  systemd-machine-id-commit.service: Fixing conflicting jobs systemd-machine-id-commit.service/start,systemd-machine-id-commit.service/stop by deleting job systemd-machine-id-commit.service/stop
-[  562.087571] systemd[1]  local-fs-pre.target: Installed new job local-fs-pre.target/stop as 941
-[  562.087766] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Installed new job sshd@4-10.239.13.2:22-10.239.193.230:60969.service/stop as 940
-[  562.087806] systemd[1]  local-fs.target: Installed new job local-fs.target/stop as 961

==========   Do Transaction    ===========
-[  562.087924] systemd[1]  poweroff.target: Enqueued job poweroff.target/start as 914
-[  562.107893] systemd[1]  local-fs.target changed active -> dead
-[  562.107914] systemd[1]  local-fs.target: Job local-fs.target/stop finished, result=done
-[  562.107942] systemd[1]  Stopped target Local File Systems.
-[  562.119858] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Changed running -> stop-sigterm
-[  562.119902] systemd[1]  Stopping OpenSSH Per-Connection Daemon (10.239.193.230:60969)...
-[  562.275089] systemd[701]  sockets.target: Installed new job sockets.target/stop as 12
-[  562.275102] systemd[701]  default.target: Installed new job default.target/stop as 11
-[  562.275124] systemd[701]  shutdown.target: Installed new job shutdown.target/start as 9
-[  562.275143] systemd[701]  timers.target: Installed new job timers.target/stop as 10
-[  562.275152] systemd[701]  basic.target: Installed new job basic.target/stop as 14
-[  562.278209] systemd[701]  systemd-exit.service: Forked /bin/kill as 778
-[  562.288412] systemd[778]  systemd-exit.service: Executing: /bin/kill -s 58 701
-[  562.311121] systemd[701]  Received SIGCHLD from PID 778 (kill).
-[  562.311215] systemd[701]  Received SIGRTMIN+24 from PID 778 (kill).
-[  562.379393] systemd[1]  Failed to send job remove signal for 1012: Connection reset by peer
-[  562.396282] systemd[1]  Failed to send job remove signal for 942: Transport endpoint is not connected
-[  562.428205] systemd[1]  Failed to send job remove signal for 1003: Transport endpoint is not connected
-[  562.429144] systemd[1]  systemd-random-seed.service: Forked /lib/systemd/systemd-random-seed as 782
-[  562.462557] systemd[1]  Failed to send job remove signal for 1020: Transport endpoint is not connected
-[  562.516811] systemd[1]  Failed to send job remove signal for 950: Transport endpoint is not connected
-[  562.533786] systemd[1]  Failed to send job remove signal for 949: Transport endpoint is not connected
-[  562.534341] systemd[1]  run-user-1000.mount: Forked /bin/umount as 787
-[  562.550140] systemd[1]  run-user-0.mount: Forked /bin/umount as 788
-[  562.580655] systemd[1]  Failed to send job remove signal for 922: Transport endpoint is not connected
-[  562.629845] systemd[1]  Failed to send job remove signal for 975: Transport endpoint is not connected
-[  562.661226] systemd[1]  Failed to send job remove signal for 935: Transport endpoint is not connected
-[  562.711786] systemd[1]  Failed to send job remove signal for 947: Transport endpoint is not connected
-[  562.720526] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Failed to send unit change signal for sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Transport endpoint is not connected
-[  562.720727] systemd[1]  local-fs.target: Failed to send unit change signal for local-fs.target: Transport endpoint is not connected
-[  562.720820] systemd[1]  Failed to send job change signal for 931: Transport endpoint is not connected
-[  562.720905] systemd[1]  Failed to send job change signal for 965: Transport endpoint is not connected
-[  562.720989] systemd[1]  Failed to send job change signal for 968: Transport endpoint is not connected
-[  562.721073] systemd[1]  Failed to send job change signal for 992: Transport endpoint is not connected
-[  562.721158] systemd[1]  Failed to send job change signal for 987: Transport endpoint is not connected
-[  562.721361] systemd[1]  Failed to send job change signal for 1028: Transport endpoint is not connected
-[  562.721446] systemd[1]  Failed to send job change signal for 1025: Transport endpoint is not connected
-[  562.721530] systemd[1]  Failed to send job change signal for 928: Transport endpoint is not connected
-[  562.721614] systemd[1]  Failed to send job change signal for 974: Transport endpoint is not connected
-[  562.721698] systemd[1]  Failed to send job change signal for 973: Transport endpoint is not connected
-[  562.721782] systemd[1]  Failed to send job change signal for 972: Transport endpoint is not connected
-[  562.721867] systemd[1]  Failed to send job change signal for 948: Transport endpoint is not connected
-[  562.721952] systemd[1]  Failed to send job change signal for 919: Transport endpoint is not connected
-[  562.722037] systemd[1]  Failed to send job change signal for 940: Transport endpoint is not connected
-[  562.724780] systemd[1]  systemd-logind.service: Got notification message from PID 632 (WATCHDOG=1)
-[  562.725568] systemd[1]  systemd-timesyncd.service: Got notification message from PID 590 (WATCHDOG=1)
-[  562.725771] systemd[1]  systemd-timesyncd.service: Got notification message from PID 590 (STOPPING=1, STATUS=Shutting down...)
-[  562.726415] systemd[1]  systemd-timesyncd.service: Got notification message from PID 590 (STATUS=Idle.)
-[  562.727005] systemd[1]  systemd-timesyncd.service: Got notification message from PID 590 (STATUS=Idle.)
-[  562.727237] systemd[1]  systemd-timesyncd.service: Got notification message from PID 590 (STATUS=Idle.)
-[  562.727443] systemd[1]  bluetooth.service: Got notification message from PID 633 (STATUS=Powering down)
-[  562.728021] systemd[1]  bluetooth.service: Got notification message from PID 633 (STATUS=Quitting)
-[  562.729160] systemd[1]  Received SIGCHLD from PID 757 (sh).
-[  562.729274] systemd[1]  Child 590 (systemd-timesyn) died (code=exited, status=0/SUCCESS)
-[  562.729381] systemd[1]  systemd-timesyncd.service: Child 590 belongs to systemd-timesyncd.service
-[  562.746704] systemd[1]  Failed to send job remove signal for 974: Transport endpoint is not connected
-[  562.746757] systemd[1]  Spawning thread to nuke /tmp/systemd-private-5283f5fa403d42a8a2ba3585c8554c3e-systemd-timesyncd.service-J7wy1U
-[  562.746835] systemd[1]  Spawning thread to nuke /var/tmp/systemd-private-5283f5fa403d42a8a2ba3585c8554c3e-systemd-timesyncd.service-uE6N7v
-[  562.747194] systemd[1]  Child 629 (connmand) died (code=exited, status=0/SUCCESS)
-[  562.747875] systemd[1]  connman.service: Child 629 belongs to connman.service
-[  562.764884] systemd[1]  Failed to send job remove signal for 968: Transport endpoint is not connected
-[  562.765575] systemd[1]  Child 630 (syslogd) died (code=killed, status=15/TERM)
-[  562.765720] systemd[1]  busybox-syslog.service: Child 630 belongs to busybox-syslog.service
-[  562.783047] systemd[1]  Failed to send job remove signal for 992: Transport endpoint is not connected
-[  562.783861] systemd[1]  Child 633 (bluetoothd) died (code=exited, status=0/SUCCESS)
-[  562.783978] systemd[1]  bluetooth.service: Child 633 belongs to bluetooth.service
-[  562.800839] systemd[1]  Failed to send job remove signal for 928: Transport endpoint is not connected
-[  562.801176] systemd[1]  Child 634 (klogd) died (code=killed, status=15/TERM)
-[  562.801668] systemd[1]  busybox-klogd.service: Child 634 belongs to busybox-klogd.service
-[  562.818862] systemd[1]  Failed to send job remove signal for 987: Transport endpoint is not connected
-[  562.819198] systemd[1]  Child 653 (login) died (code=killed, status=15/TERM)
-[  562.819692] systemd[1]  serial-getty@ttyS0.service: Child 653 belongs to serial-getty@ttyS0.service
-[  562.838059] systemd[1]  Failed to send job remove signal for 931: Transport endpoint is not connected
-[  562.838744] systemd[1]  Child 656 (login) died (code=killed, status=15/TERM)
-[  562.838863] systemd[1]  getty@tty1.service: Child 656 belongs to getty@tty1.service
-[  562.885688] systemd[1]  Failed to send job remove signal for 965: Transport endpoint is not connected
-[  562.885747] systemd[1]  session-c2.scope: Child 656 belongs to session-c2.scope
-[  562.886203] systemd[1]  Child 689 (wpa_supplicant) died (code=exited, status=0/SUCCESS)
-[  562.886316] systemd[1]  wpa_supplicant.service: Child 689 belongs to wpa_supplicant.service
-[  562.893853] systemd[1]  Failed to send job remove signal for 972: Transport endpoint is not connected
-[  562.894225] systemd[1]  Child 701 (systemd) died (code=exited, status=0/SUCCESS)
-[  562.894337] systemd[1]  user@0.service: Child 701 belongs to user@0.service
-[  562.904242] systemd[1]  Failed to send job remove signal for 948: Transport endpoint is not connected
-[  562.904910] systemd[1]  Child 750 (sshd) died (code=exited, status=255/n/a)
-[  562.905027] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Child 750 belongs to sshd@4-10.239.13.2:22-10.239.193.230:60969.service
-[  562.905056] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Main process exited, code=exited, status=255/n/a
-[  562.905409] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Changed stop-sigterm -> dead
-[  562.906320] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Job sshd@4-10.239.13.2:22-10.239.193.230:60969.service/stop finished, result=done
-[  562.906354] systemd[1]  Stopped OpenSSH Per-Connection Daemon (10.239.193.230:60969).
-[  562.915936] systemd[1]  Failed to send job remove signal for 940: Transport endpoint is not connected
-[  562.915979] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: cgroup is empty
-[  562.916310] systemd[1]  Child 757 (sh) died (code=killed, status=1/HUP)
-[  562.917078] systemd[1]  Child 762 (su) died (code=exited, status=129/n/a)
-[  562.917318] systemd[1]  Child 756 (sshd) died (code=killed, status=15/TERM)
-[  562.917765] systemd[1]  Child 708 (sh) died (code=killed, status=1/HUP)
-[  562.917872] systemd[1]  session-c2.scope: Child 708 belongs to session-c2.scope
-[  562.926746] systemd[1]  Failed to send job remove signal for 919: Transport endpoint is not connected
-[  562.926956] systemd[1]  Child 703 ((sd-pam)) died (code=exited, status=0/SUCCESS)
-[  562.927169] systemd[1]  Child 778 (kill) died (code=exited, status=0/SUCCESS)
-[  562.927940] systemd[1]  Child 782 (systemd-random-) died (code=exited, status=0/SUCCESS)
-[  562.928103] systemd[1]  systemd-random-seed.service: Child 782 belongs to systemd-random-seed.service
-[  562.936900] systemd[1]  Failed to send job remove signal for 973: Transport endpoint is not connected
-[  562.937284] systemd[1]  Child 787 (umount) died (code=exited, status=0/SUCCESS)
-[  562.937405] systemd[1]  run-user-1000.mount: Child 787 belongs to run-user-1000.mount
-[  562.944735] systemd[1]  Failed to send job remove signal for 1025: Transport endpoint is not connected
-[  562.945092] systemd[1]  Child 788 (umount) died (code=exited, status=0/SUCCESS)
-[  562.945213] systemd[1]  run-user-0.mount: Child 788 belongs to run-user-0.mount
-[  562.952182] systemd[1]  Failed to send job remove signal for 1028: Transport endpoint is not connected
-[  562.952928] systemd[1]  Child 709 (sh) died (code=killed, status=1/HUP)
-[  562.953171] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Collecting.
-[  562.954226] systemd[1]  sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Failed to send unit remove signal for sshd@4-10.239.13.2:22-10.239.193.230:60969.service: Transport endpoint is not connected
-[  562.995710] systemd[1]  systemd-networkd.socket: Failed to send unit change signal for systemd-networkd.socket: Transport endpoint is not connected
-[  563.115583] systemd[1]  Failed to process message [type=method_call sender=:1.3 path=/org/freedesktop/systemd1/unit/session_2dc3_2escope interface=org.freedesktop.systemd1.Scope member=Abandon signature=n/a]: Scope session-c3.scope is not running, cannot abandon.
-[  563.124732] systemd[1]  local-fs-pre.target changed active -> dead
-[  563.124754] systemd[1]  local-fs-pre.target: Job local-fs-pre.target/stop finished, result=done
-[  563.124782] systemd[1]  Stopped target Local File Systems (Pre).
-[  563.171504] systemd[1]  systemd-user-sessions.service: Forked /lib/systemd/systemd-user-sessions as 811
-[  563.196636] systemd[1]  Failed to send job remove signal for 962: Connection reset by peer
-[  563.197591] systemd[1]  local-fs-pre.target: Failed to send unit change signal for local-fs-pre.target: Transport endpoint is not connected
-[  563.197611] systemd[1]  umount.target: Failed to send unit change signal for umount.target: Transport endpoint is not connected
-[  563.197632] systemd[1]  Failed to send job change signal for 924: Transport endpoint is not connected
-[  563.197651] systemd[1]  Failed to send job change signal for 982: Transport endpoint is not connected
-[  563.197669] systemd[1]  Failed to send job change signal for 971: Transport endpoint is not connected
-[  563.199147] systemd[1]  Received SIGCHLD from PID 811 (systemd-user-se).
-[  563.199233] systemd[1]  Child 627 (dbus-daemon) died (code=exited, status=0/SUCCESS)
-[  563.199334] systemd[1]  dbus.service: Child 627 belongs to dbus.service
-[  563.207867] systemd[1]  Failed to send job remove signal for 924: Transport endpoint is not connected
-[  563.208268] systemd[1]  Child 811 (systemd-user-se) died (code=exited, status=0/SUCCESS)
-[  563.208393] systemd[1]  systemd-user-sessions.service: Child 811 belongs to systemd-user-sessions.service
-[  563.217641] systemd[1]  Failed to send job remove signal for 982: Transport endpoint is not connected
-[  563.218254] systemd[1]  Child 632 (systemd-logind) died (code=killed, status=15/TERM)
-[  563.218371] systemd[1]  systemd-logind.service: Child 632 belongs to systemd-logind.service
-[  563.225690] systemd[1]  Failed to send job remove signal for 971: Transport endpoint is not connected
-[  563.226178] systemd[1]  systemd-logind.service: Failed to send unit change signal for systemd-logind.service: Transport endpoint is not connected
-[  563.226369] systemd[1]  Received SIGCHLD from PID 632 (n/a).
-[  563.312442] systemd[1]  iot-rest-api-server.socket: Forked /usr/sbin/iptables as 816
-[  563.321242] systemd[1]  sshd.socket: Forked /usr/sbin/iptables as 818
-[  563.341422] systemd[1]  Received SIGCHLD from PID 816 (iptables).
-[  563.341513] systemd[1]  Child 816 (iptables) died (code=exited, status=0/SUCCESS)
-[  563.341630] systemd[1]  iot-rest-api-server.socket: Child 816 belongs to iot-rest-api-server.socket
-[  563.342684] systemd[1]  iot-rest-api-server.socket: Forked /usr/sbin/ip6tables as 820
-[  563.343424] systemd[1]  Child 818 (iptables) died (code=exited, status=0/SUCCESS)
-[  563.343959] systemd[1]  sshd.socket: Child 818 belongs to sshd.socket
-[  563.344870] systemd[1]  sshd.socket: Forked /usr/sbin/ip6tables as 821
-[  563.351466] systemd[1]  Received SIGCHLD from PID 820 (ip6tables).
-[  563.351574] systemd[1]  Child 820 (ip6tables) died (code=exited, status=0/SUCCESS)
-[  563.351696] systemd[1]  iot-rest-api-server.socket: Child 820 belongs to iot-rest-api-server.socket
-[  563.370522] systemd[1]  Child 821 (ip6tables) died (code=exited, status=0/SUCCESS)
-[  563.370646] systemd[1]  sshd.socket: Child 821 belongs to sshd.socket
-[  563.388214] systemd[1]  Received SIGCHLD from PID 821 (n/a).
-[  563.469107] systemd[1]  systemd-poweroff.service: Forked /bin/systemctl as 824
-[  563.493235] systemd[1]  sys-devices-virtual-tty-ttys5.device: Failed to send unit remove signal for sys-devices-virtual-tty-ttys5.device: Connection reset by peer
-[  563.501394] systemd[1]  Failed to send manager change signal: Transport endpoint is not connected
-[  563.505433] systemd[1]  Failed to send manager change signal: Transport endpoint is not connected
-[  563.513962] systemd[1]  Failed to send job remove signal for 914: Transport endpoint is not connected
-[  563.515911] systemd[1]  dev-ttyw8.device: Failed to send unit remove signal for dev-ttyw8.device: Transport endpoint is not connected
-[  563.525124] systemd[1]  Failed to send job remove signal for 915: Transport endpoint is not connected

==========   Force Shutdown    ===========
-[  563.699104] systemd-shutdown[1]  Remounting '/tmp' read-only with options ''.
-[  563.711937] systemd-shutdown[1]  Unmounting /tmp.
-[  564.087319] systemd-shutdown[829]  Spawned /lib/systemd/system-shutdown/debug.sh as 830.