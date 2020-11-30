# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# oh-my-zsh
if [[ ! -d $ZSH ]]; then
  echo "Installing Oh My Zsh"
  git clone git://github.com/robbyrussell/oh-my-zsh.git $ZSH
fi
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
POWERLEVEL9K_MOE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=">"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# The following can take effect without comment:
# Start error command automatic correction
ENABLE_CORRECTION="true"

# In the process of command execution, use small rred dots to prompt
COMPLETION_WAITING_DOTS="true"
# plugins
ZSH_PLUGINS=$ZSH/custom/plugins
ZSH_THEMES=$ZSH/custom/themes
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
if [[ ! -d $ZSH_THEMES/powerlevel9k ]]; then
	git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_THEMES/powerlevel9k
fi
unset ZSH_PLUGINS
unset ZSH_THEMES
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fasd zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export DEFAULT_USER="$(whoami)"
