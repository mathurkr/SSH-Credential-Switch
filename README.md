# SSH Credential Switch
A set of scripts that help with switching between SSH credentials on a single machine, executing other commands (git pushing, pulling, etc), and switching back. I did learn about [how to use config files](https://gist.github.com/jexchan/2351996 "Multiple SSH Keys settings for different github account") for the same effect, so you could consider just using that method so that you don't need to switch between keys. These will probably be refined, but I used this project to learn how to write shell scripts.

## Prerequisites
- Meant to be used when you have two public [ssh keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent "Generating a new SSH Key").
  - Ex. I have a bitbucket and a github account, so I generated two different keys, 'id_rsa' and 'id_rsa_kavi_home'

## Using these scripts
- Per GNU General Public License v3.0, do not distribute closed source versions of these scripts. Sharing is caring
- For git scripts, nsert them into the repo you want to deal with and change the following
  - `cd` location, the two keys you are changing between (ex. `id_rsa`), the `echo` statement at the top
- If you want to fork these, feel free.