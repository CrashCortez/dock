# Vita.service setup
Setup files to auto start vita streaming when the usb is plugged in. Created by M0tie

Install with

```
git clone https://github.com/CrashCortez/dock
cd dock/mpv_mods/
chmod 755 ./setup.sh
sudo ./setup.sh
```

Enable and start it with
```
sudo systemctl enable /etc/systemd/user/vita.service && sudo systemctl start vita.service
```
```
sudo systemctl enable /etc/systemd/user/deck.service && sudo systemctl start deck.service
```
