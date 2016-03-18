require 'request'
require 'gce/routes'

module Lib
    module Gce
        class Gce_Request < Request
            include Routes

            def initialize(auth, current_schema)
                super(auth, current_schema, ENV['GCE_API_URL'], list)
            end

            def do_auth

            end

            def is_authd

            end
        end
    end
end
