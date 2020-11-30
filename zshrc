# Export common zsh configuration
source ~/.zsh/common.zsh

# Export configuration for working with embedded devices
source ~/.arm/arm.uc

# Export configuration for aliases
source ~/.shell/aliases.sh

# Export configuration for zshrc
source ~/.zsh/settings.zsh

# Allow local customization in the ~/.shell_local
if [ -f ~/.shell_local ]; then
    source ~/.shell_local
fi

# Allow local customization in the ~/.zshrc_local
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
