# Vita.service setup
Setup files to auto start vita streaming when the usb is plugged in. Created by M0tie
Setup files for adding Steamdeck docking when the usb is plugged in Created by Crash
setup wireless mirrioring for the steamdeck created by reddit user [leo_vir](https://www.reddit.com/r/SteamDeck/comments/tu1o78/steam_deck_wireless_diplay_output/)

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
