#!/usr/bin/env rake

script_dir = File.expand_path(File.dirname(__FILE__))

desc 'start the web server'
task :default do
  system('bundle exec shotgun -o 0.0.0.0')
end

desc 'installs components'
task :install do
  system('bundle install')
  system('npm install -g bower')
  Dir.chdir(script_dir)
  system('bower install')
  Dir.chdir(script_dir + '/components/bootstrap')
  system('npm install')
  system('make && make bootstrap')
  Dir.chdir(script_dir)
end