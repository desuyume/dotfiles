if status is-interactive
    # Commands to run in interactive sessions can go here
end

# dnf
alias up="sudo dnf upgrade --refresh --best --allowerasing -y && flatpak update -y"

# lampp
alias lampp_start="sudo /opt/lampp/lampp start"
alias lampp_stop="sudo /opt/lampp/lampp stop"

# pnpm
set -gx PNPM_HOME "/home/des/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# go
set -gx PATH "$PATH:/usr/local/go/bin"
# go end

set -gx FLYCTL_INSTALL "/home/des/.fly"
set -gx PATH "$FLYCTL_INSTALL/bin:$PATH"

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
