# List all sorted files and directories
ls -lat

# Display the ssl.conf file content
cat /etc/httpd/conf.d/ssl.conf

# Display the ssl.conf file content one page at a time
less /etc/httpd/conf.d/ssl.conf

# Edit the ssl.conf file content
vi /etc/httpd/conf.d/ssl.conf

# Start/Stop httpd service
systemctl status httpd
systenctl stop httpd
systemctl start httpd

# Collect the logs from different sources to grep httpd
journalctl | grep httpd
