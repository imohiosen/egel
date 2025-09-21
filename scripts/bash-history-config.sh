# Bash history configuration for persistent history
# This file is sourced by the post-create script to ensure optimal history settings

# Increase history size
export HISTSIZE=10000
export HISTFILESIZE=20000

# Don't put duplicate lines or lines starting with space in the history
export HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# Write history immediately after each command
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Save and reload the history after each command finishes
# export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

echo "Bash history configuration loaded with persistent settings"