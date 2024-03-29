# Enviroment Variables
export PATH=$PATH:/usr/local/sbin
export NEXT_TELEMETRY_DISABLED=1
export BAT_THEME=ansi
export BAT_PAGER=

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

# Compile the completion dump, to increase startup speed.
dump_file="$HOME/.zcompdump"
if [[ "$dump_file" -nt "${dump_file}.zwc" || ! -f "${dump_file}.zwc" ]]; then
  zcompile "$dump_file"
fi
unset dump_file

source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

