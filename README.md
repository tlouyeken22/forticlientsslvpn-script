# forticlientsslvpn-script
A basic forticlient script to connect to vpn using a script like you would with the forticlientsslvpn GUI

# Configuration

1. Download and install forticlient ssl vpn: https://hadler.me/linux/forticlient-sslvpn-deb-packages/
2. Edit the <b>forticlientsslvpn-connect.sh</b> and setup your credentials and forticlientsslvpn_cli installation path.

3. You may want to install "expect" if you don't have it yet: `sudo apt install expect`

    to check if its installed: ` which expect`
    
    the result should be: <i>`/usr/bin/expect`</i>

4. Give <b>forticlientsslvpn-connect.sh</b> execute permissions: `chmod 775 forticlientsslvpn-connect.sh`

5. Finally, to connect - run the script like this: `./forticlientsslvpn-connect.sh`
    
    You should see the following: 
    ```
     STATUS::Login succeed
     STATUS::Starting PPPd
     STATUS::Initializing tunnel
     STATUS::Connecting to server
     STATUS::Connected
     Press Ctrl-C to quit
     STATUS::Tunnel running
    ```
    
