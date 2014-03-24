# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# init rvm
source ~/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

export PATH=/Users/kevinfolinus/.rvm/gems/ruby-2.1.1/bin:/Users/kevinfolinus/.rvm/gems/ruby-2.1.1@global/bin:/Users/kevinfolinus/.rvm/rubies/ruby-2.1.1/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/Users/kevinfolinus/.rvm/bin:/usr/local/mysql/bin
export PATH=/Users/kevinfolinus/.rvm/gems/ruby-2.1.1/bin:/Users/kevinfolinus/.rvm/gems/ruby-2.1.1@global/bin:/Users/kevinfolinus/.rvm/rubies/ruby-2.1.1/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/Users/kevinfolinus/.rvm/bin:/usr/local/mysql/bin
export PATH=~/bin:$PATH