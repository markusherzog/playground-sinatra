class MyApp < Sinatra::Application
	set :bind, '0.0.0.0'

	after do
 		puts response.status
	end

	get '/' do
		'Hello world!'
	end

	get '/hello/:name' do |name|
		"Hallo #{name}"
	end

	get '/yo!/:name' do |name|
		erb :yo, :locals => {:name => "#{name}"}
	end
end