require 'rubygems'
require 'rake'

def info(message)
  puts "\e[1;33m--> #{message}\e[00m"
end

task :server do
  info "Starting local server"
  sh "jekyll --server --auto --future"
end

task :deploy => [ :update_git_hooks ] do
  info "Deploying to AWS"
  sh "git push aws master"
end

task :update_git_hooks do
  info "Updating git hooks"
  sh "scp _deploy/git-post-receive.sh mhack.com:~/repo/mhack.git/hooks/post-receive"
end
