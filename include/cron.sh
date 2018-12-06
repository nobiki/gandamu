sudo sed -i -e 's/#cron/cron/g' /etc/rsyslog.conf

echo '/usr/bin/chronyc -a makestep' | sudo tee /etc/cron.hourly/chrony
sudo chmod 644 /etc/cron.hourly/chrony

