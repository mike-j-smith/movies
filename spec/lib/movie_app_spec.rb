require_relative '../spec_helper'

describe 'movie_app' do 

	include Rack::Test::Methods

	it 'should display movies' do
		get '/'
		last_response.body.should eq 'Movies!'
	end
end