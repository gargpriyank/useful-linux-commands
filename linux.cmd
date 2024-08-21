# Collect the logs from different sources to grep httpd
journalctl | grep httpd

# List all sorted files and directories
ls -lat

# Check the certificate file path for Apache
less /etc/httpd/conf.d/ssl.conf

# Start/Stop httpd service
systemctl status httpd
systenctl stop httpd
systemctl start httpd
