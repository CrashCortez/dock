# Vita.service setup

WIP
__

Setup files to auto start vita streaming when the usb is plugged in. Created by M0tie

Setup files for adding Steamdeck docking when the usb is plugged in Created by Crash


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

# Wireless Streaming setup by Leo_vir

Expermintal not tested. Setup wireless mirrioring for the steamdeck created by reddit user [leo_vir](https://www.reddit.com/r/SteamDeck/comments/tu1o78/steam_deck_wireless_diplay_output/)

now you can live out your wii u dreams on steam deck. okay, this is a hacky workaround but every other solution has quite high latency

spoof a "virtual" display above the main display using xrandr https://kbumsik.io/using-ipad-as-a-2nd-monitor-on-linux

capture this display and stream it (using ffmpeg + netcat)

ffmpeg -video_size 2560x1440 -framerate 60 -f x11grab -i :0.0+0,0 -c:v libx264rgb -crf 0 -preset ultrafast -color_range 2 -tune zerolatency -f mpegts - | nc -l -p 1500

play stream from second pc/ipad/android etc device, basically anything that can open a network stream. I tested vlc for this on an ipad and ffplay on linux:

nc <ip address> 1500 |ffplay -fflags nobuffer -flags low_delay -framedrop -probesize 32 -analyzeduration 0 -sync ext -loglevel verbose -

How is this different from steam link? Well this is essentially a virtual second monitor rather than mirroring the main display.

you can pick up the steam deck and walk around while playing games on an external screen without wires.
