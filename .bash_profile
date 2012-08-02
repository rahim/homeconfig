if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
