echo ""
echo ""
echo ""
echo "##############################################################################"
echo "#                        Welcone to installer V-0_0_1                        #"
echo "##############################################################################"
echo ""
echo ""
echo ""
sleep 3
echo "starting..."
cd ~
echo "OK"
echo ""
echo "inastall package... (use "apt")"
echo ""
echo ""
sleep 2.5
sudo apt install git bc libncurses5-dev
echo "Done!"
echo ""
echo "installing kernel source code..."
echo ""
sleep 4
sudo wget https://raw.githubusercontent.com/notro/rpi-source/master/rpi-source -O /usr/bin/rpi-source
sudo chmod +x /usr/bin/rpi-source
/usr/bin/rpi-source -q --tag-update
rpi-source --skip-gcc
echo ""
sleep 1.75
echo "i2s software is incorporated..."
sudo mount -t debugfs debugs /sys/kernel/debug
echo "Check if 3f203000.i2s and snd-socdummy are displayed."
sleep 6.9
sudo cat /sys/kernel/debug/asoc/platforms
sleep 10
echo "install rpi-i2s-audio?"
cd ~ && git clone https://github.com/keisukekisu/rpi-i2s-audio-installer.git && cd rpi-i2s-audio-installer && chmod +x *.sh && ./installer-V0_0_4.sh
