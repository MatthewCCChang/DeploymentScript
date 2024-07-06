#!/bin/bash

tmux kill-session
cd MLH_Portfolio

git fetch
git reset origin/main --hard

tmux new -d -s portfolio

tmux send-keys 'source python3-virtualenv/bin/activate' C-m
tmux send-keys 'pip install -r requirements.txt' C-m
tmux send-keys 'flask run --host=0.0.0.0' C-m
