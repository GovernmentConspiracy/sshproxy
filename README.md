# sshproxy
Simple macOS convenience script which enables Wi-Fi SOCKS proxy from command line and connects to the provided ssh server. 
The basis of this script is binding `localhost:8080` to a server with ssh access using `ssh -D {yourSSHServer}`.
Poor programmer's VPN.



## Instructions
1. Open command line shell.
2. Download with `git clone`.
3. Run the script by `./sshproxy.sh {yourSSHServer}`.
	- You may need to run the command `chmod +x sshproxy.sh` before so that the script may be executed.
4. End the script by pressing `ctrl c`.

## Notes
You can watch what is happening when you run the script by opening `Network Preferences > Wi-Fi > Advanced... > Proxies > SOCKS Proxy`, and when you cancel it. Check what is your reported IP address before and after running the script. 
