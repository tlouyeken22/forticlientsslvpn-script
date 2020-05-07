#!/bin/bash

# configure your path - to get this path use command $locate forticlientsslvpn_cli
FORTICLIENT_PATH="/your/path/to/forticlient-sslvpn/64bit/forticlientsslvpn_cli"

# configure your vpn credentials
VPN_HOSTNAME="your-vpn-hostname.com"
VPN_USERNAME="your-username"
VPN_PASSWORD="your-password"

cat << EOF > /tmp/expect
#!/usr/bin/expect -f

match_max 1000000
set timeout -1

spawn $FORTICLIENT_PATH --server $VPN_HOSTNAME:10443 --vpnuser "${VPN_USERNAME}" --keepalive
expect "Password for VPN:"
send "$VPN_PASSWORD"
send "\n"

# cator for invalid certificate
expect "Would you like to connect to this server? (Y/N)"
send "Y\n"

expect "Clean up..."
close
EOF

chmod 500 /tmp/expect
/usr/bin/expect -f /tmp/expect #>/dev/null

rm -f /tmp/expect
