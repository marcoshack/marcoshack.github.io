#!/usr/bin/env bash
#
# The "post-receive" script is run after receive-pack has accepted a pack
# and the repository has been updated.  It is passed arguments in through
# stdin in the form
#  <oldrev> <newrev> <refname>
# For example:
#  aa453216d1b3e49e7f6f98441fa56946ddcd6a20 68f7abf4e6f922807889f52bc043ecd31b79f814 refs/heads/master
#
# see contrib/hooks/ for a sample, or uncomment the next line and
# rename the file to "post-receive".

#. /usr/share/git-core/contrib/hooks/post-receive-email

TIMEZONE=America/Sao_Paulo
JEKYLL_CMD=$HOME/bin/jekyll
BUNDLE_CMD=$HOME/bin/bundle
GIT_REPO=$HOME/repo/mhack.git
TMP_GIT_CLONE=$HOME/tmp/mhack
PUBLIC_WWW=$HOME/www/mhack

function log_step {
  echo -e "\e[1;33m--> ${1}\e[00m"
}

log_step "Setting up local workspace"
git clone $GIT_REPO $TMP_GIT_CLONE

log_step "Updating dependencies"
cd $TMP_GIT_CLONE && $BUNDLE_CMD install --quiet

log_step "Updating site"
TZ=$TIMEZONE $JEKYLL_CMD build -s $TMP_GIT_CLONE -d $PUBLIC_WWW

log_step "Cleaning up local workspace"
rm -Rf $TMP_GIT_CLONE

exit 0
