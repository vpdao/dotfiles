export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# plugins
ZSH_PLUGINS=$ZSH/custom/plugins
if [[ ! -d $ZSH_PLUGINS/zsh-autosuggestions ]]; then
	git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_PLUGINS/zsh-autosuggestions
fi
if [[ ! -d $ZSH_PLUGINS/reminder ]]; then
	git clone https://github.com/AlexisBRENON/oh-my-zsh-reminder $ZSH_PLUGINS/reminder
fi
if [[ ! -d $ZSH_PLUGINS/git-flow-completion ]]; then
	git clone https://github.com/bobthecow/git-flow-completion $ZSH_PLUGINS/git-flow-completion
fi
if [[ ! -d $ZSH_PLUGINS/zsh-syntax-highlighting ]]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PLUGINS/zsh-syntax-highlighting
fi
unset ZSH_PLUGINS

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fasd zsh-autosuggestions zsh-syntax-highlighting)
