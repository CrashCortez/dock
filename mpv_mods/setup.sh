#!/bin/sh
cd /home/pi/dock/mpv_mods/
sudo chown pi:pi *.sh
sudo chmod a+x *.sh
cd
sudo cp /home/pi/dock/mpv_mods/Etc_Systemd_user/* /etc/systemd/user/
sudo cp /home/pi/dock/mpv_mods/etc_udev_rules.d/* /etc/udev/rules.d/
sudo cp /home/pi/dock/mpv_mods/close.sh /home/pi/scripts/
sudo cp /home/pi/dock/mpv_mods/launchscripts /home/pi/scripts/
#sudo cp /home/pi/dock/mpv_mods/vidware /home/pi/
sudo systemd enable /etc/systemd/user/vita.service && sudo systemd start vita.service
sudo systemd enable /etc/systemd/user/deck.service && sudo systemd start deck.service
