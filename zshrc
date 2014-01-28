#my config
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PIVOTAL_TOKEN='3ea11b3f37b9ca7656fbf17531649a5b'

alias irb="irb --readline --prompt-mode simple"
alias clear_terminal="sudo rm -rf /private/var/log/asl*"
alias guard="guard -n f -c -A"
alias rake="bundle exec rake"

alias pt="pivotal_tools"

autoload -U colors && colors
autoload -U compinit

export PATH=/usr/local/bin:$PATH
export PATH=$(brew --prefix ruby)/bin:$PATH


function pt_show () {
  pt show story $1 --project-index=1
}

function pt_all {
  pt show stories --project-index=1
}
  

source ~/.zsh-config/init.zsh
PROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}|$(git_prompt_info)"
