require 'request'
require 'digital_ocean/routes'

module Lib
    module Digital_Ocean
        class DO_Request < Request
            include Routes

            def initialize(auth, current_schema)
                super(auth, current_schema, ENV['DO_API_URL'], list)
            end

            def do_auth

            end
            
            def is_authd

            end
        end
    end
end
