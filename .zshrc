# Enviroment Variables
export PATH=/opt/homebrew/opt/ruby/bin:$PATH:/usr/local/sbin
export NEXT_TELEMETRY_DISABLED=1
export BAT_THEME=ansi
export BAT_PAGER=
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

# ssh
ssh-add --apple-load-keychain -q

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz compinit && compinit -i

# command-not-found
# HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
# if [ -f "$HB_CNF_HANDLER" ]; then
# source "$HB_CNF_HANDLER";
# fi

# Better npm completion
source ~/.zsh_plugins/zsh-better-npm-completion/zsh-better-npm-completion.plugin.zsh

# if [[ "$TERM_PROGRAM" == "vscode" ]]; then
#  PS1='%1d: '
# else
  # Git console
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWCOLORHINTS=1  
  source ~/.zsh_plugins/git-prompt.sh
  precmd () { __git_ps1 "" "%1d: " "(%s) | " }
# fi

# Aliases
alias ls="ls -G"
alias less="less -R"
alias more="more -R"
alias tree="tree -C"
alias exa="exa --git --icons --color-scale --group-directories-first -h"
alias bat="bat --style full --tabs 2 -f"
alias clear="clear && clear"

alias enable-sleep="/Users/alic3/Programming/alic3dev/misc-scripts/enablesleep.sh"
alias disable-sleep="/Users/alic3/Programming/alic3dev/misc-scripts/disablesleep.sh"
alias update-packages="/Users/alic3/Programming/alic3dev/misc-scripts/update-packages.sh"
alias upgrade-packages="update-packages"
alias uup="update-packages"

alias deluged="/Applications/Deluge.app/Contents/MacOS/deluged"
alias deluge-web="/Applications/Deluge.app/Contents/MacOS/deluge-web"
alias deluge-console="/Applications/Deluge.app/Contents/MacOS/deluge-console"

# Compile the completion dump, to increase startup speed.
dump_file="$HOME/.zcompdump"
if [[ "$dump_file" -nt "${dump_file}.zwc" || ! -f "${dump_file}.zwc" ]]; then
  zcompile "$dump_file"
fi
unset dump_file

source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# pnpm
export PNPM_HOME="/Users/alic3/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Created by `pipx` on 2024-04-18 21:33:04
export PATH="$PATH:/Users/alic3/.local/bin"

eval "$(register-python-argcomplete pipx)"

