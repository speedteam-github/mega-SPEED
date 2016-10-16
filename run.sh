#!/usr/bin/env bash
THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR
  if [ ! -f ./tg/telegram.h ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
  fi
  if [ ! -f ./tg/bin/telegram-cli ]; then
    exit 1
  fi
  while true; do
    rm -r ../.telegram-cli/state
   tg/bin/telegram-cli -k ./tg/tg-server.pub -s ./bot/seedbot.lua -l 1 -E $@
   sleep 2
  done
fi
     ##########################
     #     By @MehdiHS        #
     #                        #
     #  Channel > @Black_Ch   #
     ##########################
