
function t {
  proj=''
  proj_file='.task-project'

  if [[ -r $proj_file ]]; then
    proj="project:$(head -1 $proj_file)"
  fi

  task $proj
}

function fd {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}

function vis {
  local sessions_dir=.vim-sessions
  local session_file=$sessions_dir/default.vim
  local check_file=$sessions_dir/last-session
  local branch_session=$sessions_dir/`currentGitBranch`.vim

  if [[ -r "$1" ]]; then                                         # always load given session, if present
    local session_file="$1"
  elif [ -r "$branch_session" ]; then  # try to load branch session otherwise
    local session_file="$branch_session"
  elif [[ -r $check_file ]]; then                                # read from check_file instead
    local session_file=$(cat $check_file | head -1)
  fi

  if [[ -r $session_file ]]; then
    echo "loading session '$session_file'"
    $VIMCMD -S $session_file
  else
    echo "no '$session_file' session, loading normally"
    $VIMCMD
  fi
}

function formattedGitBranch {
    _branch=`currentGitBranch`
    test -n "$_branch" && echo -e "\[\e[0;32m\]($_branch)\[\e[0m\]"
}

function currentGitBranch {
    echo "$(git branch 2>/dev/null | sed -e "/^\s/d" -e "s/^\*\s//" -e "s/\n//")"
}

function md () {
    mkdir -p $1 && cd $1
}

function fname {
    find . -iname "*$1*"
}

function show_path {
    ruby -e "puts ENV['PATH'].split(':')"
}

function serve {
  port=${1:-3000}
  ruby -run -e httpd . -p $port
}

function rdc {
  pw=$(ruby -e "require 'yaml'; puts YAML.load_file('config/database.yml').dig('development', 'password')")
  PGPASSWORD=$pw bin/rails dbconsole
}
