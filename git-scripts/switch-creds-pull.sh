#!/usr/bin/env bash
echo "This pulls files from my personal (remote) github repo, then switches the ssh back to my work account."
eval "$(ssh-agent -s)"
ssh-add -l
ssh-add ~/.ssh/id_rsa_kavi_home
git status
git pull origin main
ssh-add -D
ssh-add ~/.ssh/id_rsa
$SHELL