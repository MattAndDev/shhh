#!/bin/sh
if [ ! -n "$SHHH" ]; then
  SHHH=~/.shhh
fi

if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]; then
  printf "${YELLOW}Found ~/.zshrc.${NORMAL}";
fi

env git clone --depth=1 https://github.com/MattAndDev/shhh.git "$SHHH"