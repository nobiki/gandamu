sudo dpkg-reconfigure -plow unattended-upgrades
sudo sed -i -e 's/\/\/Unattended-Upgrade::Remove-Unused-Dependencies "false"/Unattended-Upgrade::Remove-Unused-Dependencies "true"/g' /etc/apt/apt.conf.d/50unattended-upgrades
