require 'rubygems'
require 'rake'

task :server do
  sh "jekyll --server --auto"
end

namespace :site do
  task :deploy do
    sh "git push aws master"
  end
end

namespace :git do
  task :update_hooks do
    sh "scp _deploy/git-post-receive.sh mhack.com:~/repo/mhack.git/hooks/post-receive"
  end
end
