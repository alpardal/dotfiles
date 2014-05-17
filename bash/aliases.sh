# general
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls -xX --color=auto'
fi
alias quit="exit"
alias sa="sudo apt-get"
alias ll='ls -oh'
alias la='ls -A'
alias l1="ls -F -1 --group-directories-first"
alias ack="ack-grep"
alias a="ack-grep"
alias -- -='cd -'
alias re.=". ~/.bashrc"

# go is `git checkout`
alias golang='/usr/local/go/bin/go'

# ruby
alias ri="ri -Tf ansi"
alias gemset="rvm gemset"
alias serve="ruby -run -e httpd . -p 3000"
alias migrate="rake db:migrate db:test:prepare"
# git
alias gs="git status"
alias gss="git status --short"
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gl="git log --oneline --decorate --graph --branches='*'"
alias glp="git --no-pager log --oneline --decorate --graph --branches='*'"
alias go="git checkout"
alias gi="git commit"
alias gd="git diff"
alias gdc="git diff --word-diff-regex=." # char diff
alias gdp="git diff --patience"
alias gds="git diff --staged"
alias gdw="git diff --ignore-all-space"
alias gm="git merge"
alias gt="git tag"
alias stash="git stash -u"
alias stashp="git stash pop"
alias stashl="git stash list --oneline --decorate"
#tmux
alias tm="tmux"
alias ts="tmux list-sessions"
alias ta="tmux attach"
# other
alias ctags="ctags-exuberant --extra=+f -R"
alias node="node --harmony"
