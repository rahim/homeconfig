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
plugins=(cap command-not-found rake rvm extract git github ruby bundler gem screen file-info)

#excluded: npm - xmas issue

source $ZSH/oh-my-zsh.sh



# TODO: DRY up bash/zsh init duplication


# ssh-agent

test=`/bin/ps -ef | /bin/grep ssh-agent | /bin/grep -v grep  | /usr/bin/awk '{print $2}' | xargs`

if [ "$test" = "" ]; then
   
   # there is no agent running
   if [ -e "$HOME/agent.sh" ]; then
      # remove the old file
      /bin/rm -f $HOME/agent.sh
   fi;
   
   # start a new agent
   /usr/bin/ssh-agent | /bin/grep -v echo >&$HOME/agent.sh
fi;

test -e $HOME/agent.sh && source $HOME/agent.sh

if [ "$test" = "" ]; then
   /usr/bin/ssh-add
fi;

alias kagent="kill -9 $SSH_AGENT_PID"

# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# sublime host/guest vm wireup (guest)

function sb {
  # TODO: do something to deal with paths that don't match shared workspace
  # perhaps open in vim? or prompt to open in vim?
  local FULLPATH=`readlink -f $1`
  local HOMEPATH=~ #/home/AHC/rahim.packirsaibo
  local HOMECHAR='~'
  local REPLACED_PATH=${FULLPATH/$HOMEPATH/$HOMECHAR}
  echo $REPLACED_PATH
  ssh laptop33 '~/bin/sb' $REPLACED_PATH &
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Customize to your needs...
export PATH=/home/AHC/rahim.packirsaibo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/AHC/rahim.packirsaibo/.rvm/bin
alias homeconfig='git --git-dir=/home/AHC/rahim.packirsaibo/.homeconfig.git/ --work-tree=/home/AHC/rahim.packirsaibo'
