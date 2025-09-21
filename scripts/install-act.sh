#!/bin/bash

# Install act (GitHub Actions runner)
curl -s https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

# Move act to system bin directory
sudo mv ./bin/act /usr/local/bin/act

# Make sure it's executable
sudo chmod +x /usr/local/bin/act

# Clean up
rm -rf ./bin

echo "act has been installed and moved to /usr/local/bin/act"