require 'rubygems'
require 'rake'

task :server do
  sh "jekyll --server --auto"
end

task :deploy do
  sh "git push aws master"
end
