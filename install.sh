#!/bin/sh
if [ ! -n "$SHHH" ]; then
  SHHH=~/.shhh
fi

env git clone --depth=1 https://github.com/MattAndDev/shhh.git "$SHHH"