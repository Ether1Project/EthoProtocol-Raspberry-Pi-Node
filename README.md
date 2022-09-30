## How to run an EthoProtocol Node on a Raspberry-Pi 4 (64bit)

This example is for a GATEWAY NODE.  If you wish to run a Master or Service Node please change the node type in the upgrade command line.  This script swaps out a Geth AMD64 binary for a Geth ARM64 during the install.

**You must install the Etho Node as ROOT user, for some reason there are permission problems if installed with "ether1node" user.**

###### Step 1
Prepare your Raspberry Pi with Ubuntu as found on this page:
https://ubuntu.com/tutorials/how-to-install-ubuntu-desktop-on-raspberry-pi-4#1-overview

###### Step 2
Prepare your Raspberry Pi as a Etho Node as found on this page:
https://docs.ethoprotocol.com/nodes/installing-uninstalling-etho-nodes/installing-etho-nodes

###### Step 3
Go to the Etho Protocol Node Dashboard and generate your Node Install script:
https://nodes.ethoprotocol.com

###### Step 4 
Edit the autogenerated script as outlined below for the correct Geth Binaries. 
**Note this will install Etho Protocol Node Version 2.1.0** 
The autto genrated install script from the EthoProtocol Node Dashboard will look something like this:

```
mkdir -p /tmp/ethoprotocol && cd /tmp/ethoprotocol
rm -rf upgrade-debian.sh && wget https://nodes.ethoprotocol.com/download/upgrade-debian.sh
chmod +x upgrade-debian.sh
./upgrade-debian.sh -n 'gatewaynode' -u 'cdbd1320bab64184d8022af65fe9da92df21a81d' -w '0XAFF4A8AFB0CE10057DD2534C1CF34D016DF96E11'

```
And swap out the WGET and upgrade.sh lines so your command looks like this:

```
mkdir -p /tmp/ethoprotocol && cd /tmp/ethoprotocol
rm -rf etho-pi-upgrade-debian.sh && wget https://raw.githubusercontent.com/hashratez/EthoProtocol-Raspberry-Pi-Node/main/etho-pi-upgrade-debian.sh
chmod +x etho-pi-upgrade-debian.sh
./etho-pi-upgrade-debian.sh -n 'gatewaynode' -u 'cdbd1320bab64184d8022af65fe9da92df21a81d' -w '0XAFF4A8AFB0CE10057DD2534C1CF34D016DF96E11'
```



