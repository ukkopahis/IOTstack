echo "Creating startup service for /dev/ttyUSB0 creation for ESPHome"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo cp $SCRIPT_DIR/create_dev_ttyUSB0.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start create_dev_ttyUSB0.service
sudo systemctl enable create_dev_ttyUSB0.service
