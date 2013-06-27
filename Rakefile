require 'rubygems'
require 'rake'

SITE_HOSTNAME = "direct.mhack.com"

def info(message)
  puts "\e[1;33m--> #{message}\e[00m"
end

task :server do
  info "Starting local server"
  sh "jekyll --server --auto --future"
end

task :deploy => [ :update_remote_repo, :update_git_hooks ] do
  info "Deploying to #{SITE_HOSTNAME}"
end

task :update_remote_repo do
  info "Updating remote repository"
  sh "git push #{SITE_HOSTNAME}:~/repo/mhack.git master"
end

task :update_git_hooks do
  info "Updating git hooks"
  sh "scp _deploy/git-post-receive.sh direct.mhack.com:~/repo/mhack.git/hooks/post-receive"
end
