"""gunicorn WSGI server configuration."""
bind = "0.0.0.0:8080"
workers = 1
pythonpath = "/home/box/etc/hello.py"
