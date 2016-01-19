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
