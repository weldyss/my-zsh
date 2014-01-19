export MYZSH=$HOME/.my-zsh
export PLUGIN_DIR=$MYZSH/plugins

fpath=($PLUGIN_DIR $fpath)

for config_file ($PLUGIN_DIR/**/*.zsh); do
  source $config_file
done


autoload -U compinit
compinit -i -d "${ZSH_COMPDUMP}"

