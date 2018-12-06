sudo sed -i -e "s/var\/www\/html/var\/virtualdomains\/localhost/g" /etc/nginx/sites-available/default
mkdir -p /var/virtualdomains/localhost
echo "gandamu" > /var/virtualdomains/localhost/index.html
sudo systemctl restart nginx

