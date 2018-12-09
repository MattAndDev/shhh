PS1_HEAD=$'🌈%{ %}';
PS1_BASE=$(basename $(pwd));
PS1_COLOR_CYAN=$'%{\e[38;2;10;247;249m%}'
PS1_COLOR_GREEN=$'%{\e[38;2;10;187;149m%}'
PS1_COLOR_BLUE=$'%{\e[38;2;10;87;250m%}'
PS1_COLOR_BLUE_LIGHT=$'%{\e[38;2;130;157;249m%}'
PS1_COLOR_RED=$'%{\e[38;2;240;57;49m%}'

git_diff() {
  git diff-index --quiet HEAD 2> /dev/null 
  if [ $? -eq 1 ]
  then
    echo "${PS1_COLOR_RED}*"
  fi
}

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\:\1\:/';
}

cwd() {
  basename $(pwd);
}

export LSCOLORS=gxfxcxdxexegedabagacad

export PS1=$'${PS1_HEAD} ${PS1_COLOR_CYAN}${USER}:${PS1_COLOR_GREEN}$(cwd)${PS1_COLOR_BLUE}$(git_branch)$(git_diff) ${PS1_COLOR_BLUE_LIGHT}\n$ %{\e[0m%}';
