#!/bin/sh
PS1_HEAD=$'🌈%{ %}';
PS1_COLOR_CYAN=$'%{\e[38;2;10;247;249m%}'
PS1_COLOR_GREEN=$'%{\e[38;2;10;187;149m%}'
PS1_COLOR_BLUE=$'%{\e[38;2;10;87;250m%}'
PS1_COLOR_BLUE_LIGHT=$'%{\e[38;2;130;157;249m%}'
PS1_COLOR_RED=$'%{\e[38;2;240;57;49m%}'
PS1_COLOR_RESET=$'%{\e[0m%}'


git_diff() {
  git diff-index --quiet HEAD 2> /dev/null 
  if [ $? -eq 1 ]
  then
    echo "*"
  fi
}

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1\:/';
}

export LSCOLORS=gxfxcxdxexegedabagacad
export CLICOLOR=1

export PS1='$PS1_HEAD $PS1_COLOR_CYAN%n:$PS1_COLOR_GREEN%c:$PS1_COLOR_BLUE$(git_branch)$PS1_COLOR_RED$(git_diff)$PS1_COLOR_BLUE_LIGHT $ $PS1_COLOR_RESET';

alias la="ls -la"
alias git-aa="git add -A"
alias git-rh="git reset --hard"
