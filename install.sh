#!/bin/zsh
if [ ! -n "$SHHH" ]; then
  SHHH=~/.shhh
fi
export SHHH
env git clone --depth=1 https://github.com/MattAndDev/shhh.git "$SHHH"