export PATH=/opt/local/bin:/usr/local/bin:$PATH
export M2_HOME=/opt/local/share/java/maven3
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
export PS1="\[\033[31m\]\u\[\033[34m\]@\[\033[32m\]\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \[\033[37m\]$ "
