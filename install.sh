#!/bin/bash

# Install needed languages set up and dependencies 
echo "Install needed Things"
sudo apt-get update -y
sudo apt install -y golang-go
sudo apt install pipx
sudo apt install -y awscli

mkdir Tools
cd Tools

# Install Subfinder
echo "Install Subfinder Tool"
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo cp ~/go/bin/subfinder /bin/


# Install sublist3r
echo "Installing sublist3r tool"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
sudo pip install -r requirements.txt
cd ../

# Install gobuster
echo "Installing gobuster tool"
go install github.com/OJ/gobuster/v3@latest
sudo cp ~/go/bin/gobuster /bin/

# Install Seclists wordlist
echo "Install Seclists Wordlist"
git clone https://github.com/danielmiessler/SecLists.git

# Install katana tool
echo "Install Katana Tool"
go install github.com/projectdiscovery/katana/cmd/katana@latest
sudo cp ~/go/bin/katana /bin/