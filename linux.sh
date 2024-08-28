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

# Generate self-signed certificate with paasphrase
openssl req -x509 -sha256 -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/server.key -out /etc/ssl/certs/server.crt

# Generate self-signed certificate without paasphrase
openssl req -x509 -nodes -sha256 -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/server.key -out /etc/ssl/certs/server.crt

# Generate self-signed certificate without paasphrase in Apache server
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/server.key -out /etc/ssl/certs/server.crt

# List SSL/TLS certificates connecting to server
openssl s_client -showcerts -connect localhost:443

# Test validity of SSL/TLS certificate
openssl s_client -verify_return_error -connect localhost:443

# Associate the SSL/TLS certificate with certificate file
openssl s_client -CAfile /etc/ssl/certs/server.crt -connect localhost:443

# Display the certificate
openssl x509 -noout -text -in /etc/ssl/certs/server.crt

# Install SSL/TLS certificate
cp /etc/ssl/certs/server.crt /etc/pki/ca-trust/source/anchors/
update-ca-trust

# Search the .conf file for SSL/TLS certificate
grep -i -r "SSLCertificateChainFile" /etc/ssl/

# Convert .der, .cer, .crt files to .pem
openssl x509 -inform der -in certificate.cer -out certificate.pem

# Convert .pem file to .der
openssl x509 -outform der -in certificate.pem -out certificate.der

# Convert .pfx, .p12 containing a private key and certificates to .pem
openssl pkcs12 -in keyStore.pfx -out keyStore.pem -nodes

# Convert .pem certificate file and a private key to .pfx, .p12
openssl pkcs12 -export -out certificate.pfx -inkey privateKey.key -in certificate.crt -certfile CACert.crt 

# Convert .pe. to .crt file
openssl x509 -outform der -in certificate.pem -out certificate.crt
