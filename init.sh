# nginx
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
# Gunicorn
sudo ln -sf /home/box/web/gunicorn.conf  /etc/gunicorn.d/hello.py
gunicorn -b 0.0.0.0:8080 hello:function 
gunicorn -b 0.0.0.0:8000 hello:function 
#gunicorn -c hello.py hello:functions
# Failed test #4. Invalid Content-Type header (text/plain expected) received from nginx
