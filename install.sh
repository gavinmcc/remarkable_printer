mkdir -p /home/root/bin
cd /home/root/bin
wget -O release.zip http://github.com/gavinmcc/remarkable_printer/releases/7/download/release.zip
unzip -o release.zip
mv printer.service /etc/systemd/system
systemctl daemon-reload
systemctl enable --now printer.service
rm printer.x86 release.zip
