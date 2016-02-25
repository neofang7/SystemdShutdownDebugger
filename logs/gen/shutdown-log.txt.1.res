SystemdLog File logs/shutdown-log.txt.1
	Section INS_TRANS: [300.639317 - 300.645300] = 0.005983
	Section EXE_TRANS: [300.645300 - 303.315739] = 2.670439
	Section FORCE_SHUT: [303.315739 - 303.894816] = 0.579077

========== Install Transaction ===========
+[  300.640681] systemd-journald[534]  Sent WATCHDOG=1 notification.
+[  300.642561] systemd[1]  sysinit.target: Looking at job sysinit.target/start conflicted_by=no
+[  300.642574] systemd[1]  sysinit.target: Looking at job sysinit.target/stop conflicted_by=no
+[  300.642587] systemd[1]  sysinit.target: Fixing conflicting jobs sysinit.target/start,sysinit.target/stop by deleting job sysinit.target/stop
+[  300.642616] systemd[1]  save-rtc.service: Looking at job save-rtc.service/start conflicted_by=no
+[  300.642631] systemd[1]  save-rtc.service: Looking at job save-rtc.service/stop conflicted_by=no
+[  300.642644] systemd[1]  save-rtc.service: Fixing conflicting jobs save-rtc.service/start,save-rtc.service/stop by deleting job save-rtc.service/stop
+[  300.642669] systemd[1]  local-fs.target: Looking at job local-fs.target/start conflicted_by=no
+[  300.642684] systemd[1]  local-fs.target: Looking at job local-fs.target/stop conflicted_by=no
+[  300.642705] systemd[1]  local-fs.target: Fixing conflicting jobs local-fs.target/start,local-fs.target/stop by deleting job local-fs.target/stop
+[  300.642719] systemd[1]  var-volatile.mount: Deleting job var-volatile.mount/stop as dependency of job local-fs.target/stop
+[  300.642744] systemd[1]  local-fs-pre.target: Looking at job local-fs-pre.target/start conflicted_by=no
+[  300.642756] systemd[1]  local-fs-pre.target: Looking at job local-fs-pre.target/stop conflicted_by=no
+[  300.642782] systemd[1]  local-fs-pre.target: Fixing conflicting jobs local-fs-pre.target/start,local-fs-pre.target/stop by deleting job local-fs-pre.target/stop
+[  300.643671] systemd[1]  sshdgenkeys.service: Installed new job sshdgenkeys.service/stop as 699
+[  300.643867] systemd[1]  systemd-update-utmp.service: Installed new job systemd-update-utmp.service/stop as 729
+[  300.644258] systemd[1]  systemd-journal-catalog-update.service: Installed new job systemd-journal-catalog-update.service/stop as 735
+[  300.644284] systemd[1]  ldconfig.service: Installed new job ldconfig.service/stop as 645
+[  300.644345] systemd[1]  systemd-machine-id-commit.service: Installed new job systemd-machine-id-commit.service/stop as 655
+[  300.644416] systemd[1]  tmp.mount: Installed new job tmp.mount/stop as 744
+[  300.644694] systemd[1]  systemd-hwdb-update.service: Installed new job systemd-hwdb-update.service/stop as 715
+[  300.644848] systemd[1]  systemd-ask-password-console.path: Installed new job systemd-ask-password-console.path/stop as 719
+[  300.645056] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Installed new job sshd@0-10.239.13.2:22-10.239.193.230:60918.service/stop as 653
+[  300.645119] systemd[1]  systemd-tmpfiles-setup-dev.service: Installed new job systemd-tmpfiles-setup-dev.service/stop as 663
+[  300.645148] systemd[1]  swap.target: Installed new job swap.target/stop as 736
+[  300.645228] systemd[1]  systemd-update-done.service: Installed new job systemd-update-done.service/stop as 737
+[  300.645249] systemd[1]  systemd-sysusers.service: Installed new job systemd-sysusers.service/stop as 734

==========   Do Transaction    ===========
+[  300.645300] systemd[1]  poweroff.target: Enqueued job poweroff.target/start as 631
+[  300.657374] systemd[1]  systemd-update-done.service: Changed exited -> dead
+[  300.657905] systemd[1]  systemd-update-done.service: Job systemd-update-done.service/stop finished, result=done
+[  300.657939] systemd[1]  Stopped Update is Completed.
+[  300.672254] systemd[1]  swap.target changed active -> dead
+[  300.672274] systemd[1]  swap.target: Job swap.target/stop finished, result=done
+[  300.672301] systemd[1]  Stopped target Swap.
+[  300.686971] systemd[1]  systemd-tmpfiles-setup-dev.service: Changed exited -> dead
+[  300.687607] systemd[1]  systemd-tmpfiles-setup-dev.service: Job systemd-tmpfiles-setup-dev.service/stop finished, result=done
+[  300.687640] systemd[1]  Stopped Create Static Device Nodes in /dev.
+[  300.721048] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Changed running -> stop-sigterm
+[  300.721092] systemd[1]  Stopping OpenSSH Per-Connection Daemon (10.239.193.230:60918)...
+[  300.773778] systemd[1]  Failed to send job remove signal for 668: Connection reset by peer
+[  300.775565] systemd[1]  run-user-1000.mount: Forked /bin/umount as 821
+[  300.794541] systemd[747]  run-user-1000.mount: Changed mounted -> dead
+[  300.813581] systemd[1]  Failed to send job remove signal for 704: Transport endpoint is not connected
+[  300.831535] systemd[1]  Failed to send job remove signal for 646: Transport endpoint is not connected
+[  300.884632] systemd[1]  Failed to send job remove signal for 713: Transport endpoint is not connected
+[  300.885725] systemd[1]  systemd-hwdb-update.service: Changed exited -> dead
+[  300.886269] systemd[1]  systemd-hwdb-update.service: Job systemd-hwdb-update.service/stop finished, result=done
+[  300.886302] systemd[1]  Stopped Rebuild Hardware Database.
+[  300.901814] systemd[1]  Failed to send job remove signal for 715: Transport endpoint is not connected
+[  300.916549] systemd[1]  Failed to send job remove signal for 733: Transport endpoint is not connected
+[  300.917388] systemd[1]  systemd-random-seed.service: Forked /lib/systemd/systemd-random-seed as 825
+[  300.949995] systemd[1]  Failed to send job remove signal for 718: Transport endpoint is not connected
+[  300.967735] systemd[1]  Failed to send job remove signal for 640: Transport endpoint is not connected
+[  300.968854] systemd[1]  systemd-machine-id-commit.service: Changed exited -> dead
+[  300.969455] systemd[1]  systemd-machine-id-commit.service: Job systemd-machine-id-commit.service/stop finished, result=done
+[  300.969490] systemd[1]  Stopped Commit a transient machine-id on disk.
+[  300.986648] systemd[1]  Failed to send job remove signal for 655: Transport endpoint is not connected
+[  301.004705] systemd[1]  ldconfig.service: Changed exited -> dead
+[  301.005275] systemd[1]  ldconfig.service: Job ldconfig.service/stop finished, result=done
+[  301.005309] systemd[1]  Stopped Rebuild Dynamic Linker Cache.
+[  301.021523] systemd[1]  Failed to send job remove signal for 645: Transport endpoint is not connected
+[  301.022617] systemd[1]  systemd-journal-catalog-update.service: Changed exited -> dead
+[  301.023152] systemd[1]  systemd-journal-catalog-update.service: Job systemd-journal-catalog-update.service/stop finished, result=done
+[  301.023185] systemd[1]  Stopped Rebuild Journal Catalog.
+[  301.038926] systemd[1]  Failed to send job remove signal for 735: Transport endpoint is not connected
+[  301.069649] systemd[1]  Failed to send job remove signal for 709: Transport endpoint is not connected
+[  301.087039] systemd[1]  Failed to send job remove signal for 681: Transport endpoint is not connected
+[  301.096060] systemd[747]  basic.target: Installed new job basic.target/stop as 15
+[  301.096098] systemd[747]  sockets.target: Installed new job sockets.target/stop as 11
+[  301.096124] systemd[747]  shutdown.target: Installed new job shutdown.target/start as 10
+[  301.096134] systemd[747]  timers.target: Installed new job timers.target/stop as 14
+[  301.096163] systemd[747]  default.target: Installed new job default.target/stop as 12
+[  301.100364] systemd[747]  systemd-exit.service: Forked /bin/kill as 829
+[  301.114601] systemd[829]  systemd-exit.service: Executing: /bin/kill -s 58 747
+[  301.126107] systemd[747]  Received SIGCHLD from PID 829 (kill).
+[  301.126224] systemd[747]  Received SIGRTMIN+24 from PID 829 (kill).
+[  301.202007] systemd[1]  Failed to send job remove signal for 712: Transport endpoint is not connected
+[  301.218680] systemd[1]  Failed to send job remove signal for 665: Transport endpoint is not connected
+[  301.236415] systemd[1]  run-user-0.mount: Forked /bin/umount as 833
+[  301.284378] systemd[1]  Failed to send job remove signal for 683: Transport endpoint is not connected
+[  301.284745] systemd[1]  systemd-update-utmp.service: About to execute: /lib/systemd/systemd-update-utmp shutdown
+[  301.285146] systemd[1]  systemd-update-utmp.service: Forked /lib/systemd/systemd-update-utmp as 835
+[  301.285483] systemd[1]  systemd-update-utmp.service: Changed exited -> stop
+[  301.285537] systemd[1]  Stopping Update UTMP about System Boot/Shutdown...
+[  301.287312] systemd[835]  systemd-update-utmp.service: Executing: /lib/systemd/systemd-update-utmp shutdown
+[  301.289886] systemd-update-utmp[835]  systemd-update-utmp running as pid 835
+[  301.290094] systemd-update-utmp[835]  systemd-update-utmp stopped as pid 835
+[  301.319991] systemd[1]  Failed to send job remove signal for 670: Transport endpoint is not connected
+[  301.337684] systemd[1]  Failed to send job remove signal for 669: Transport endpoint is not connected
+[  301.352795] systemd[1]  Failed to send job remove signal for 723: Transport endpoint is not connected
+[  301.388196] systemd[1]  systemd-update-utmp.service: Failed to send unit change signal for systemd-update-utmp.service: Transport endpoint is not connected
+[  301.391271] systemd[1]  systemd-journal-catalog-update.service: Failed to send unit change signal for systemd-journal-catalog-update.service: Transport endpoint is not connected
+[  301.391588] systemd[1]  ldconfig.service: Failed to send unit change signal for ldconfig.service: Transport endpoint is not connected
+[  301.392201] systemd[1]  systemd-machine-id-commit.service: Failed to send unit change signal for systemd-machine-id-commit.service: Transport endpoint is not connected
+[  301.393360] systemd[1]  systemd-hwdb-update.service: Failed to send unit change signal for systemd-hwdb-update.service: Transport endpoint is not connected
+[  301.395757] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Failed to send unit change signal for sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Transport endpoint is not connected
+[  301.396372] systemd[1]  systemd-tmpfiles-setup-dev.service: Failed to send unit change signal for systemd-tmpfiles-setup-dev.service: Transport endpoint is not connected
+[  301.396591] systemd[1]  swap.target: Failed to send unit change signal for swap.target: Transport endpoint is not connected
+[  301.396894] systemd[1]  systemd-update-done.service: Failed to send unit change signal for systemd-update-done.service: Transport endpoint is not connected
+[  301.396990] systemd[1]  Failed to send job change signal for 686: Transport endpoint is not connected
+[  301.397074] systemd[1]  Failed to send job change signal for 678: Transport endpoint is not connected
+[  301.397158] systemd[1]  Failed to send job change signal for 729: Transport endpoint is not connected
+[  301.397241] systemd[1]  Failed to send job change signal for 702: Transport endpoint is not connected
+[  301.397322] systemd[1]  Failed to send job change signal for 745: Transport endpoint is not connected
+[  301.397405] systemd[1]  Failed to send job change signal for 721: Transport endpoint is not connected
+[  301.397514] systemd[1]  Failed to send job change signal for 639: Transport endpoint is not connected
+[  301.397599] systemd[1]  Failed to send job change signal for 675: Transport endpoint is not connected
+[  301.397681] systemd[1]  Failed to send job change signal for 662: Transport endpoint is not connected
+[  301.397764] systemd[1]  Failed to send job change signal for 644: Transport endpoint is not connected
+[  301.397849] systemd[1]  Failed to send job change signal for 690: Transport endpoint is not connected
+[  301.397930] systemd[1]  Failed to send job change signal for 643: Transport endpoint is not connected
+[  301.398013] systemd[1]  Failed to send job change signal for 743: Transport endpoint is not connected
+[  301.398096] systemd[1]  Failed to send job change signal for 641: Transport endpoint is not connected
+[  301.398179] systemd[1]  Failed to send job change signal for 653: Transport endpoint is not connected
+[  301.398338] systemd[1]  libmount event [rescan: yes]
+[  301.400891] systemd[1]  systemd-logind.service: Got notification message from PID 681 (WATCHDOG=1)
+[  301.401667] systemd[1]  bluetooth.service: Got notification message from PID 677 (STATUS=Powering down)
+[  301.402258] systemd[1]  bluetooth.service: Got notification message from PID 677 (STATUS=Quitting)
+[  301.403138] systemd[1]  systemd-timesyncd.service: Got notification message from PID 595 (WATCHDOG=1)
+[  301.403347] systemd[1]  systemd-timesyncd.service: Got notification message from PID 595 (STOPPING=1, STATUS=Shutting down...)
+[  301.403978] systemd[1]  systemd-timesyncd.service: Got notification message from PID 595 (STATUS=Idle.)
+[  301.404598] systemd[1]  systemd-timesyncd.service: Got notification message from PID 595 (STATUS=Idle.)
+[  301.404811] systemd[1]  systemd-timesyncd.service: Got notification message from PID 595 (STATUS=Idle.)
+[  301.405554] systemd[1]  Received SIGCHLD from PID 801 (sh).
+[  301.405645] systemd[1]  Child 595 (systemd-timesyn) died (code=exited, status=0/SUCCESS)
+[  301.405748] systemd[1]  systemd-timesyncd.service: Child 595 belongs to systemd-timesyncd.service
+[  301.423242] systemd[1]  Failed to send job remove signal for 721: Transport endpoint is not connected
+[  301.423288] systemd[1]  Spawning thread to nuke /tmp/systemd-private-4b2c59b685874512b8295050f39e9ab4-systemd-timesyncd.service-Py6swR
+[  301.423380] systemd[1]  Spawning thread to nuke /var/tmp/systemd-private-4b2c59b685874512b8295050f39e9ab4-systemd-timesyncd.service-MDkzBg
+[  301.423781] systemd[1]  Child 676 (syslogd) died (code=killed, status=15/TERM)
+[  301.423901] systemd[1]  busybox-syslog.service: Child 676 belongs to busybox-syslog.service
+[  301.441141] systemd[1]  Failed to send job remove signal for 662: Transport endpoint is not connected
+[  301.441565] systemd[1]  Child 675 (connmand) died (code=exited, status=0/SUCCESS)
+[  301.441683] systemd[1]  connman.service: Child 675 belongs to connman.service
+[  301.458222] systemd[1]  Failed to send job remove signal for 686: Transport endpoint is not connected
+[  301.458619] systemd[1]  Child 677 (bluetoothd) died (code=exited, status=0/SUCCESS)
+[  301.458736] systemd[1]  bluetooth.service: Child 677 belongs to bluetooth.service
+[  301.475218] systemd[1]  Failed to send job remove signal for 675: Transport endpoint is not connected
+[  301.475563] systemd[1]  Child 678 (klogd) died (code=killed, status=15/TERM)
+[  301.475719] systemd[1]  busybox-klogd.service: Child 678 belongs to busybox-klogd.service
+[  301.492457] systemd[1]  Failed to send job remove signal for 690: Transport endpoint is not connected
+[  301.492950] systemd[1]  Child 682 (login) died (code=killed, status=15/TERM)
+[  301.493067] systemd[1]  serial-getty@ttyS0.service: Child 682 belongs to serial-getty@ttyS0.service
+[  301.510643] systemd[1]  Failed to send job remove signal for 643: Transport endpoint is not connected
+[  301.511002] systemd[1]  Child 685 (login) died (code=killed, status=15/TERM)
+[  301.511120] systemd[1]  getty@tty1.service: Child 685 belongs to getty@tty1.service
+[  301.557339] systemd[1]  Failed to send job remove signal for 702: Transport endpoint is not connected
+[  301.557396] systemd[1]  session-c2.scope: Child 685 belongs to session-c2.scope
+[  301.557884] systemd[1]  Child 743 (wpa_supplicant) died (code=exited, status=0/SUCCESS)
+[  301.557998] systemd[1]  wpa_supplicant.service: Child 743 belongs to wpa_supplicant.service
+[  301.564708] systemd[1]  Failed to send job remove signal for 678: Transport endpoint is not connected
+[  301.565080] systemd[1]  Child 747 (systemd) died (code=exited, status=0/SUCCESS)
+[  301.565193] systemd[1]  user@0.service: Child 747 belongs to user@0.service
+[  301.574131] systemd[1]  Failed to send job remove signal for 639: Transport endpoint is not connected
+[  301.574502] systemd[1]  Child 790 (sshd) died (code=exited, status=255/n/a)
+[  301.574616] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Child 790 belongs to sshd@0-10.239.13.2:22-10.239.193.230:60918.service
+[  301.574650] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Main process exited, code=exited, status=255/n/a
+[  301.575082] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Changed stop-sigterm -> dead
+[  301.575476] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Job sshd@0-10.239.13.2:22-10.239.193.230:60918.service/stop finished, result=done
+[  301.575507] systemd[1]  Stopped OpenSSH Per-Connection Daemon (10.239.193.230:60918).
+[  301.584880] systemd[1]  Failed to send job remove signal for 653: Transport endpoint is not connected
+[  301.584923] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: cgroup is empty
+[  301.585255] systemd[1]  Child 801 (sh) died (code=exited, status=0/SUCCESS)
+[  301.585513] systemd[1]  Child 800 (sshd) died (code=killed, status=15/TERM)
+[  301.585704] systemd[1]  Child 753 (sh) died (code=killed, status=1/HUP)
+[  301.586054] systemd[1]  session-c2.scope: Child 753 belongs to session-c2.scope
+[  301.594306] systemd[1]  Failed to send job remove signal for 641: Transport endpoint is not connected
+[  301.594520] systemd[1]  Child 821 (umount) died (code=exited, status=0/SUCCESS)
+[  301.594641] systemd[1]  run-user-1000.mount: Child 821 belongs to run-user-1000.mount
+[  301.601181] systemd[1]  Failed to send job remove signal for 743: Transport endpoint is not connected
+[  301.601535] systemd[1]  Child 752 (sh) died (code=killed, status=1/HUP)
+[  301.601982] systemd[1]  Child 825 (systemd-random-) died (code=exited, status=0/SUCCESS)
+[  301.602116] systemd[1]  systemd-random-seed.service: Child 825 belongs to systemd-random-seed.service
+[  301.610184] systemd[1]  Failed to send job remove signal for 644: Transport endpoint is not connected
+[  301.610541] systemd[1]  Child 748 ((sd-pam)) died (code=exited, status=0/SUCCESS)
+[  301.610937] systemd[1]  Child 829 (kill) died (code=exited, status=0/SUCCESS)
+[  301.611247] systemd[1]  Child 833 (umount) died (code=exited, status=0/SUCCESS)
+[  301.611355] systemd[1]  run-user-0.mount: Child 833 belongs to run-user-0.mount
+[  301.617409] systemd[1]  Failed to send job remove signal for 745: Transport endpoint is not connected
+[  301.617659] systemd[1]  run-user-1000.mount: Collecting.
+[  301.617683] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Collecting.
+[  301.618811] systemd[1]  sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Failed to send unit remove signal for sshd@0-10.239.13.2:22-10.239.193.230:60918.service: Transport endpoint is not connected
+[  301.623024] systemd[1]  Received SIGCHLD from PID 675 (n/a).
+[  301.729213] systemd[1]  Received SIGCHLD from PID 835 (systemd-update-).
+[  301.729328] systemd[1]  Child 835 (systemd-update-) died (code=exited, status=0/SUCCESS)
+[  301.729452] systemd[1]  systemd-update-utmp.service: Child 835 belongs to systemd-update-utmp.service
+[  301.729476] systemd[1]  systemd-update-utmp.service: Control process exited, code=exited status=0
+[  301.729770] systemd[1]  systemd-update-utmp.service: Got final SIGCHLD for state stop.
+[  301.730714] systemd[1]  systemd-update-utmp.service: Changed stop -> dead
+[  301.731272] systemd[1]  systemd-update-utmp.service: Job systemd-update-utmp.service/stop finished, result=done
+[  301.731306] systemd[1]  Stopped Update UTMP about System Boot/Shutdown.
+[  301.739379] systemd[1]  Failed to send job remove signal for 729: Transport endpoint is not connected
+[  301.739423] systemd[1]  systemd-update-utmp.service: cgroup is empty
+[  301.740354] systemd[1]  systemd-update-utmp.service: Failed to send unit change signal for systemd-update-utmp.service: Transport endpoint is not connected
+[  301.810363] systemd[1]  Failed to process message [type=method_call sender=:1.5 path=/org/freedesktop/systemd1/unit/session_2dc3_2escope interface=org.freedesktop.systemd1.Scope member=Abandon signature=n/a]: Scope session-c3.scope is not running, cannot abandon.
+[  301.811916] systemd[1]  sshdgenkeys.service: Changed exited -> dead
+[  301.812934] systemd[1]  sshdgenkeys.service: Job sshdgenkeys.service/stop finished, result=done
+[  301.812970] systemd[1]  Stopped OpenSSH Key Generation.
+[  301.857353] systemd[1]  systemd-user-sessions.service: Forked /lib/systemd/systemd-user-sessions as 855
+[  301.872919] systemd[1]  systemd-sysusers.service: Changed exited -> dead
+[  301.873474] systemd[1]  systemd-sysusers.service: Job systemd-sysusers.service/stop finished, result=done
+[  301.873511] systemd[1]  Stopped Create System Users.
+[  301.879524] systemd[1]  Failed to send job remove signal for 734: Connection reset by peer
+[  301.888930] systemd[1]  Failed to send job remove signal for 667: Transport endpoint is not connected
+[  301.889682] systemd[1]  systemd-sysusers.service: Failed to send unit change signal for systemd-sysusers.service: Transport endpoint is not connected
+[  301.889807] systemd[1]  Failed to send job change signal for 688: Transport endpoint is not connected
+[  301.889826] systemd[1]  Failed to send job change signal for 701: Transport endpoint is not connected
+[  301.889844] systemd[1]  Failed to send job change signal for 687: Transport endpoint is not connected
+[  301.890367] systemd[1]  Received SIGCHLD from PID 855 (systemd-user-se).
+[  301.890455] systemd[1]  Child 673 (dbus-daemon) died (code=exited, status=0/SUCCESS)
+[  301.890559] systemd[1]  dbus.service: Child 673 belongs to dbus.service
+[  301.898304] systemd[1]  Failed to send job remove signal for 688: Transport endpoint is not connected
+[  301.898687] systemd[1]  Child 855 (systemd-user-se) died (code=exited, status=0/SUCCESS)
+[  301.898813] systemd[1]  systemd-user-sessions.service: Child 855 belongs to systemd-user-sessions.service
+[  301.906667] systemd[1]  Failed to send job remove signal for 701: Transport endpoint is not connected
+[  301.913950] systemd[1]  Received SIGCHLD from PID 681 (systemd-logind).
+[  301.914041] systemd[1]  Child 681 (systemd-logind) died (code=killed, status=15/TERM)
+[  301.914214] systemd[1]  systemd-logind.service: Child 681 belongs to systemd-logind.service
+[  301.960108] systemd[1]  iot-rest-api-server.socket: Forked /usr/sbin/iptables as 860
+[  301.973358] systemd[1]  sshd.socket: Forked /usr/sbin/iptables as 862
+[  301.984391] systemd[1]  systemd-ask-password-console.path: Changed waiting -> dead
+[  301.984414] systemd[1]  systemd-ask-password-console.path: Job systemd-ask-password-console.path/stop finished, result=done
+[  301.984441] systemd[1]  Stopped Dispatch Password Requests to Console Directory Watch.
+[  302.002864] systemd[1]  tmp.mount: About to execute: /bin/umount /tmp
+[  302.003249] systemd[1]  tmp.mount: Forked /bin/umount as 864
+[  302.003591] systemd[1]  tmp.mount: Changed mounted -> unmounting
+[  302.003651] systemd[1]  Unmounting Temporary Directory...
+[  302.006190] systemd[864]  tmp.mount: Executing: /bin/umount /tmp
+[  302.068205] systemd[1]  libmount event [rescan: yes]
+[  302.071058] systemd[1]  Received SIGCHLD from PID 860 (iptables).
+[  302.071143] systemd[1]  Child 860 (iptables) died (code=exited, status=0/SUCCESS)
+[  302.071250] systemd[1]  iot-rest-api-server.socket: Child 860 belongs to iot-rest-api-server.socket
+[  302.071818] systemd[1]  iot-rest-api-server.socket: Forked /usr/sbin/ip6tables as 866
+[  302.072434] systemd[1]  Child 862 (iptables) died (code=exited, status=0/SUCCESS)
+[  302.072565] systemd[1]  sshd.socket: Child 862 belongs to sshd.socket
+[  302.073134] systemd[1]  sshd.socket: Forked /usr/sbin/ip6tables as 867
+[  302.073717] systemd[1]  Child 864 (umount) died (code=exited, status=0/SUCCESS)
+[  302.073850] systemd[1]  tmp.mount: Child 864 belongs to tmp.mount
+[  302.073883] systemd[1]  tmp.mount: Mount process exited, code=exited status=0
+[  302.073962] systemd[1]  tmp.mount: Changed unmounting -> dead
+[  302.078089] systemd[1]  tmp.mount: Job tmp.mount/stop finished, result=done
+[  302.078139] systemd[1]  Unmounted Temporary Directory.
+[  302.081964] systemd-journald[534]  Successfully sent stream file descriptor to service manager.
+[  302.095679] systemd[1]  Child 866 (ip6tables) died (code=exited, status=0/SUCCESS)
+[  302.095804] systemd[1]  iot-rest-api-server.socket: Child 866 belongs to iot-rest-api-server.socket
+[  302.114111] systemd[1]  systemd-journald.service: Got notification message from PID 534 (FDSTORE=1)
+[  302.114149] systemd[1]  systemd-journald.service: Added fd to fd store.
+[  302.114218] systemd[1]  Received SIGCHLD from PID 866 (n/a).
+[  302.123918] systemd[1]  Accepted new private connection.
+[  302.127091] systemd[1]  Accepted new private connection.
+[  302.130389] systemd[1]  Got disconnect on private connection.
+[  302.132509] systemd[1]  Got disconnect on private connection.
+[  302.133839] systemd[1]  Got disconnect on private connection.
+[  303.084527] systemd[1]  Received SIGCHLD from PID 867 (ip6tables).
+[  303.084617] systemd[1]  Child 867 (ip6tables) died (code=exited, status=0/SUCCESS)
+[  303.085088] systemd[1]  sshd.socket: Child 867 belongs to sshd.socket
+[  303.113582] systemd[1]  Accepted new private connection.
+[  303.176372] systemd[1]  systemd-poweroff.service: Forked /bin/systemctl as 870
+[  303.182220] systemd-journald[534]  Successfully sent stream file descriptor to service manager.
+[  303.188075] systemd[1]  systemd-journald.service: Got notification message from PID 534 (FDSTORE=1)
+[  303.188120] systemd[1]  systemd-journald.service: Added fd to fd store.
+[  303.191228] systemd[1]  Accepted new private connection.
+[  303.191526] systemd[1]  Got disconnect on private connection.
+[  303.202114] systemd[1]  dev-ttyw8.device: Failed to send unit remove signal for dev-ttyw8.device: Connection reset by peer
+[  303.218340] systemd[1]  Failed to send job remove signal for 632: Transport endpoint is not connected
+[  303.226789] systemd[1]  Failed to send job remove signal for 631: Transport endpoint is not connected
+[  303.229485] systemd[1]  sys-devices-virtual-tty-ttys5.device: Failed to send unit remove signal for sys-devices-virtual-tty-ttys5.device: Transport endpoint is not connected

==========   Force Shutdown    ===========
+[  303.785672] systemd-shutdown[875]  Spawned /lib/systemd/system-shutdown/debug.sh as 876.
