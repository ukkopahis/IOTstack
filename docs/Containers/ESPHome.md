# ESPHome

[ESPHome](https://esphome.io/) is a system to control your ESP8266/ESP32 by
simple yet powerful configuration files and control them remotely through Home
Automation systems.

Web UI is at: `http://raspberrypi.local:6052/`
Login username is `admin` and the password is automatically generated and can be
found and changed in your `docker-compose.yml`.

## USB serial programming from a docker-container

To support flashing an ESP device directly from your RPi, `/dev/ttyUSB0` is made
available to the container. This file usually auto-created when an
USB-to-serial-converter is plugged in. Docker needs the file to exist when the
container is started. This is usually handled by install.sh and menu.sh. But
just in case this somehow fails (e.g. RPi already connected when said scripts
are executed), just run:

```
sudo mknod -m660 /dev/ttyUSB0 c 188 0
sudo chgrp dialout /dev/ttyUSB0
```
