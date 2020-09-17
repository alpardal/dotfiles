
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
  local CHECK_FILE=.last-vim-session
  local SESSION_FILE=Session.vim

  if [[ -r "$1" ]]; then
    local SESSION_FILE="$1"
  else
    if [[ -r $CHECK_FILE ]]; then
      local SESSION_FILE=$(cat $CHECK_FILE | head -1)
    fi
  fi

  vim -S $SESSION_FILE
}

function formattedGitBranch {
    _branch="$(git branch 2>/dev/null | sed -e "/^\s/d" -e "s/^\*\s//")"
    test -n "$_branch" && echo -e "\[\e[0;32m\]($_branch)\[\e[0m\]"
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
