require 'rubygems'
require 'rake'

desc "create symbolic links to each config file"
task :symlink do
  symlink
end

namespace :symlink do
  task :force do
    symlink(true)
  end
end

def symlink(force = false)
  dir = File.dirname(__FILE__)
  force = force ? '-Ff' : ''

  (Dir.glob('.*') - ['.git', '.', '..']).each do |file|
    `ln -s #{force} #{File.join(dir, file)} #{File.join(File.expand_path(ENV['HOME']), file)}`
  end
end
