class MyApp < Sinatra::Application
	set :bind, '0.0.0.0'

	get '/' do
		'Hello world!'
	end
end