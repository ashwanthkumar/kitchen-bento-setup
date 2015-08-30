sudo yum clean all
sudo rm /etc/udev/rules.d/70-persistent-net.rules
sudo dd if=/dev/zero of=/EMPTY bs=1M || true
sudo rm -f /EMPTY
cat /dev/null > ~/.bash_history && history -c && exit
