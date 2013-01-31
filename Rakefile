require 'rubygems'
require 'rake'

task :server do
  sh "jekyll --server --auto --future"
end

task :deploy => [ :update_git_hooks ] do
  sh "git push aws master"
end

task :update_git_hooks do
  sh "scp _deploy/git-post-receive.sh mhack.com:~/repo/mhack.git/hooks/post-receive"
end
