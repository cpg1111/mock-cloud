require 'sinatra'
require 'dotenv'

Dotenv.load

puts ENV['AWS_ACCESS_KEY_ID']
puts ENV['AWS_SECRET_KEY_ID']
puts ENV['AWS_REGION']

class Mock_Cloud < Sinatra::Base
    get '/:provider/*' do

    end
end
