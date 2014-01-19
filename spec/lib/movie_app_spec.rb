require_relative '../lib/movie_app.rb'
require 'rack/test'

set :environment, :test

def app
	Sinatra::Application
end

describe 'movie_app' do 

	include Rack::Test::Methods

	it 'should display movies' do
		get '/'
		last_response.body.should eq 'Movies!'
	end
end