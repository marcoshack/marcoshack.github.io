require 'rubygems'
require 'rake'

SITE_HOSTNAME = "direct.mhack.com"

def info(message)
  puts "\e[1;33m--> #{message}\e[00m"
end

def update_remote_repo
  info "Updating remote repository"
  sh "git push #{SITE_HOSTNAME}:~/repo/mhack.git master"	
end

def update_git_hooks
  info "Updating git hooks"
  sh "scp _deploy/git-post-receive.sh direct.mhack.com:~/repo/mhack.git/hooks/post-receive"
end

task :server do
  info "Starting local server"
  sh "jekyll server --watch --future --drafts --lsi"
end

task :build do
  info "Build site"
  sh "jekyll build --future --drafts --lsi"
end

task :deploy do
  info "Deploying to #{SITE_HOSTNAME}"
  update_git_hooks
  update_remote_repo
end
