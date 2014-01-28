export ZSH_PLUGIN_PATH=$HOME/.zsh-config/plugins
export ZSH_LIB_PATH=$HOME/.zsh-config/lib

autoload -U compinit
compinit -i -d "${ZSH_COMPDUMP}"

for config_file ($ZSH_LIB_PATH/*.zsh); do
  source $config_file
done

source $ZSH_PLUGIN_PATH/git/git.plugin.zsh
source $ZSH_PLUGIN_PATH/gitfast/gitfast.plugin.zsh
source $ZSH_PLUGIN_PATH/git-prompt/git-prompt.plugin.zsh
