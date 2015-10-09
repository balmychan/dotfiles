#set -o vi

# For docker
export DOCKER_CERT_PATH=/Users/balmychan/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then                                                                                           
  OS='Cygwin'
fi

# For cygwin settings
if [ OS == 'Cygwin' ]; then
  export PATH=$PATH:/cygdrive/c/Windows/System32/inetsrv
  # rbenv
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  stty lnext ^q stop undef start undef
  # Alias: Recycle application pool for IIS
  alias recycle='appcmd recycle apppool $1'
  # Alias: open
  alias open='cygstart'
  # Alias: vim
  alias vi='vim'
  # Alias: Open zac task
  task() {
    cygstart "https://orozac.jp.oro.com/oro/Task/Task.asp?status=2&type_sub_window=1&code_task_ref=$1"
  }
  # Alias: Open zac task list
  tasklist() {
    cygstart "https://orozac.jp.oro.com/oro/Task/TaskKensaku.asp"
  }
  # Alias: Open redmine ticket
  redmine() {
    cygstart "http://gitlab.jp.oro.com:8888/redmine/issues/$1"
  }
  # Alias: Open redmine agile board
  agile() {
    cygstart "http://gitlab.jp.oro.com:8888/redmine/projects/zac-blanco/agile/board"
  }
  # Alias: Open merge-request list
  mergerequest() {
    cygstart "http://gitlab.jp.oro.com/dashboard/merge_requests"
  }
  # Alias: Open sublime-text with folder
  subl() {
    /cygdrive/c/Program\ Files/Sublime\ Text\ 2/sublime_text.exe -a $1 &
  }
  # Alias: Memo
  memo() {
    vim ~/Memo/$1
  }
  # Alias: Remote desktop
  remote() {
    mstsc /w:1024 /h:768 /v:$1 &
  }
fi

# Open tmux
if [ -z $TMUX ]; then
  if $(tmux has-session 2> /dev/null); then
    tmux -2 attach
  else
    tmux -2
  fi
fi
