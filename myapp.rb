require 'bundler'
Bundler.require

class MyApp < Sinatra::Application
	

	configure do
		set :assets, Sprockets::Environment.new(root)

		assets.append_path File.join(root, 'assets', 'stylesheets')
		assets.append_path File.join(root, 'assets', 'javascripts')
		assets.append_path File.join(root, 'bower_components', 'jquery', 'dist')
		assets.append_path File.join(root, 'bower_components', 'bootstrap', 'dist')

		Sprockets::Helpers.configure do |config|
			config.environment = assets
			config.prefix      = '/assets'
			config.digest      = true
		end
	end

	helpers do
		include Sprockets::Helpers
	end

	after do
 		#puts response.status
	end

	get '/' do
		erb :index
	end

	get '/yo!/:name' do |name|
		erb :yo, :locals => {:name => "#{name}"}
	end
end
