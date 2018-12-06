sudo tee -a /etc/chrony/chrony.conf << EOF
server ntp0.jst.mfeed.ad.jp
server ntp1.jst.mfeed.ad.jp
server ntp2.jst.mfeed.ad.jp
EOF
sudo systemctl enable chrony
sudo systemctl restart chrony
