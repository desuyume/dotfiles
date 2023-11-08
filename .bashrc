# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# dnf
alias up="sudo dnf upgrade --refresh --best --allowerasing -y && flatpak update -y"

# lampp
alias lampp_start="sudo /opt/lampp/lampp start"
alias lampp_stop="sudo /opt/lampp/lampp stop"

# pnpm
export PNPM_HOME="/home/des/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# go
export PATH=$PATH:/usr/local/go/bin
# go end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
