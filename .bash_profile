export BASH_CONF="bash_profile"
# Added by Grow SDK Installer (2016-09-08 12:19:36.303578)
alias grow="/Users/carlosvilla/bin/grow"
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH=/usr/local/bin:$PATH:$HOME/google-cloud-sdk/bin/:$HOME/scripts

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
