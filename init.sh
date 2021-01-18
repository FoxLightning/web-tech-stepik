# fix some problem
sudo apt update 
sudo apt install python3.9
sudo pip3 install --upgrade django
sudo rm /etc/nginx/sites-enabled/default
# nginx
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
# Gunicorn
# sudo ln -sf /home/box/web/gunicorn.conf  /etc/gunicorn.d/hello.py
sudo gunicorn -c ./etc/gunicorn_conf.py hello:function &
sudo gunicorn -c ./etc/django_conf.py ask.wsgi:application &
