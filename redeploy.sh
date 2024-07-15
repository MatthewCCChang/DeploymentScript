#!/bin/bash

tmux kill-session
cd MLH_Portfolio

git fetch
git reset origin/main --hard

source python3-virtualenv/bin/activate
pip install -r requirements.txt

systemctl daemon-reload
systemctl enable mysqld
systemctl portfolio