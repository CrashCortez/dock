# dok
Setup files to auto start vita streaming when the usb is plugged in. Created by M0tie

Install with

```
git clone https://github.com/M0tie/dok
cd dok/mpv_mods/
chmod 755 ./setup.sh
sudo ./setup.sh
```
or

```
git clone https://github.com/CrashCortez/dok
cd dok/mpv_mods/
chmod 755 ./setup.sh
sudo ./setup.sh
```

Enable and start it with
```
sudo systemd enable /etc/systemd/user/vita.service && sudo systemd start vita.service
```
