# nginx
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
# Gunicorn
sudo ln -sf /home/box/web/gunicorn.conf  /etc/gunicorn.d/test
gunicron hello:function
