require 'net/http'
require 'request'
require 'aws/routes'

module Lib
    module Aws
        class Aws_Reqiest < Request
            include Routes

            def initialize(auth, current_schema)
                super(auth, current_schema, ENV['AWS_API_URL'], list)
            end

            def do_auth
                
            end

            def is_authd?

            end
        end
    end
end
