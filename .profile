OS=`uname`

# eval "$(hub alias -s)" # causes zsh git completion issues
alias sv="python -m SimpleHTTPServer"
alias ls="ls -G"
alias homeconfig='git --git-dir=$HOME/.homeconfig.git/ --work-tree=$HOME'
alias hc=homeconfig
alias sb="subl -n"
alias sba="subl -a"
alias map="xargs -n1" # hat tip Vicent Driessen, https://coderwall.com/p/4tkkpq
alias ip="curl -s curlmyip.com"
alias cwdiff="git diff --no-index --color-words --minimal --ignore-all-space"
alias be="bundle exec"

if type "nocorrect" > /dev/null;  then
  alias git="nocorrect git"
  alias bower="nocorrect bower"
fi

erhu_mac="00:1e:c9:37:a5:72"
if [ "$OS" = "Darwin" ]; then
  alias wakeerhu="wol $erhu_mac"
  alias pg_start="postgres -D /usr/local/var/postgres"
else
  alias wakeerhu="wakeonlan $erhu_mac"
fi

alias sleeperhu="ssh erhu.local sudo halt -p" # technically this isn't sleeping...

source $HOME/.path

