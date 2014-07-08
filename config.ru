require 'rubygems'
require 'bundler'

Bundler.require

require './myapp'

map '/assets' do
	run MyApp.assets
end

map '/' do
	run MyApp
end
