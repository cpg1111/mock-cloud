require 'sinatra'

require './lib'

class Mock_Cloud < Sinatra::Base
    get '/:provider/*' do

    end
end
