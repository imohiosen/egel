#!/bin/bash


mkdir -p /workspaces/egel/.devcontainer/bash-history

# Create the persistent bash history file if it doesn't exist
if [ ! -f /workspaces/egel/.devcontainer/bash-history/.bash_history ]; then
    touch /workspaces/egel/.devcontainer/bash-history/.bash_history
fi

# Remove the default bash history file if it exists
if [ -f /root/.bash_history ]; then
    rm /root/.bash_history
fi

# Create a symbolic link from root's bash history to the persistent location
ln -sf /workspaces/egel/.devcontainer/bash-history/.bash_history /root/.bash_history

# Set proper permissions
chmod 600 /workspaces/egel/.devcontainer/bash-history/.bash_history
chown root:root /workspaces/egel/.devcontainer/bash-history/.bash_history

# Add bash history configuration to root's .bashrc
if ! grep -q "/workspaces/egel/scripts/bash-history-config.sh" /root/.bashrc; then
    echo "" >> /root/.bashrc
    echo "# Source persistent bash history configuration" >> /root/.bashrc
    echo "source /workspaces/egel/scripts/bash-history-config.sh" >> /root/.bashrc
fi

echo "Bash history linked to persistent storage in /workspaces/egel/.devcontainer/bash-history/.bash_history"