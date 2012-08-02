# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="rahim"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cap command-not-found rake rvm extract git github ruby bundler gem screen)

#excluded: npm - xmas issue

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/AHC/rahim.packirsaibo/.rvm/gems/ruby-1.9.3-p194/bin:/home/AHC/rahim.packirsaibo/.rvm/gems/ruby-1.9.3-p194@global/bin:/home/AHC/rahim.packirsaibo/.rvm/rubies/ruby-1.9.3-p194/bin:/home/AHC/rahim.packirsaibo/.rvm/bin:/home/AHC/rahim.packirsaibo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/AHC/rahim.packirsaibo/.rvm/bin:/home/AHC/rahim.packirsaibo/.rvm/bin
alias homeconfig='git --git-dir=/home/AHC/rahim.packirsaibo/.homeconfig.git/ --work-tree=/home/AHC/rahim.packirsaibo'
