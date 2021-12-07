#!/usr/bin/env bash
printf "This pushes files to my personal github, then switches the ssh back to my work account."
eval "$(ssh-agent -s)"
ssh-add -l
ssh-add ~/.ssh/id_rsa_kavi_home
ssh-add -l

NC='\033[0m' # No Color
BLUE='\033[1;34m'
LI_GREEN='\033[1;32m'

if git status | grep -q 'nothing to commit, working tree clean'
then

   printf "\n${BLUE}Nothing to commit${NC}, switching credentials back...\n"
else

    printf "\n${LI_GREEN}Changes found!${NC} Adding, committing, pushing, then switching credentials back...\n"
    git add .
    currentDate=$(date +'%I:%M %m/%d/%Y')
    git commit -m "GC Push $currentDate"

    git push origin main
fi
ssh-add -D
ssh-add ~/.ssh/id_rsa
$SHELL