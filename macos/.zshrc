####################################################
# Oh-My-ZSH and Powerlevel Settings/Customizations #
####################################################

# Oh-My-ZSH (https://ohmyz.sh/)
# Powerlevel10k (https://github.com/romkatv/powerlevel10k)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Insecure directory check ignored (must come before source $ZSH/oh-my-zsh.sh)
ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/svause/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_MODE="nerdfont-complete"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  docker 
  npm
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


###################################################
# Application Related Configuration and Env Vars  #
###################################################

# Node Version Manager (https://github.com/nvm-sh/nvm)
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# AWS CLI (https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
export AWS_PROFILE=default
export AWS_REGION=us-east-1

# Add .NET Core SDK tools
export PATH="$PATH:/Users/svause/.dotnet/tools"

# Set default working directory
cd ~/dev

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. (Configuration Wizard Values)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
