# fix some problem
sudo apt update
sudo apt install python3.5
sudo apt-get install -y python3.5-dev
sudo rm /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo pip3 install --upgrade pip
sudo -H pip3 install --upgrade django==2.1
sudo -H pip3 install --upgrade gunicorn
sudo rm /etc/nginx/sites-enabled/default
# nginx
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
# Gunicorn
# sudo ln -sf /home/box/web/gunicorn.conf  /etc/gunicorn.d/hello.py
sudo gunicorn -c ./etc/gunicorn_conf.py hello:function &
sudo gunicorn -c ./etc/django_conf.py ask.wsgi:application &
