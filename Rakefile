require 'rubygems'
require 'rake'

desc "create symbolic links to each config file"
task :default do
  files = Dir.glob('.*') - ['.git', '.gitmodules', '.DS_Store', '.', '..']

  files.each do |file|
    link_file(file)
  end
end

def link_file(file)
  p " => symlinking #{file}"
  directory = File.dirname(__FILE__)
  env_home = ENV["HOME"]

  # p "ln -s '#{File.join(directory, file)}' '#{env_home}/#{file}'"
  sh("ln -s -Ff '#{File.join(directory, file)}' '#{env_home}/#{file}'")
end

