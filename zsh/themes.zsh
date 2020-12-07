export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEMES=$ZSH/custom/themes

if [[ ! -d $ZSH_THEMES/powerlevel9k ]]; then
	git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_THEMES/powerlevel9k
fi

unset ZSH_THEMES

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
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes)
# The following can take effect without comment:
# Start error command automatic correction
ENABLE_CORRECTION="true"

# Disable checking status of repo
DISABLE_UNTRACKED_FILES_DIRTY="true"

# In the process of command execution, use small rred dots to prompt
COMPLETION_WAITING_DOTS="true"
