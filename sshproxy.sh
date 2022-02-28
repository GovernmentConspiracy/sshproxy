# Turns on ssh proxy using socks proxy. Supply ssh ip address in arguments.
# On ^C, socks proxy turns off and ssh tunnel is off.

trap 'net_off' SIGINT

function net_off() {
	networksetup -setsocksfirewallproxystate Wi-Fi off
	exit
}

networksetup -setsocksfirewallproxy Wi-Fi localhost 8080
networksetup -setsocksfirewallproxystate Wi-Fi on
ssh -CN -D 8080 $@
net_off


 
