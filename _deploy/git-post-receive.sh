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

JEKYLL_CMD=$HOME/bin/jekyll
BUNDLE_CMD=$HOME/bin/bundle
GIT_REPO=$HOME/repo/mhack.git
REMOTE_REPOS=git@bitbucket.org:marcoshack/mhack.git
TMP_GIT_CLONE=$HOME/tmp/mhack
PUBLIC_WWW=$HOME/www/mhack

echo "--> Setting up local workspace"
git clone $GIT_REPO $TMP_GIT_CLONE
cd $TMP_GIT_CLONE && $BUNDLE_CMD install

echo "--> Updating site"
$JEKYLL_CMD --no-auto $TMP_GIT_CLONE $PUBLIC_WWW

echo "--> Syincing remote repositories"
for REPO in $REMOTE_REPOS; do
  git push --mirror $REPO
done

echo "--> Cleaning up local workspace"
rm -Rf $TMP_GIT_CLONE

exit
