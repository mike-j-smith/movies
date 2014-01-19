require 'simplecov'
SimpleCov.start

require 'rack/test'
require 'movie_app.rb'

set :environment, :test

def app
	Sinatra::Application
end