#!/bin/sh

PATHNAME=$(pwd | md5)
SESSION="neilhaggerty"
tmux attach-session -d -t "$SESSION" || tmuxinator start "$SESSION"
