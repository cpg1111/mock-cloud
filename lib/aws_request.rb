require 'net/http'
require 'request'
require 'aws_routes'

class Aws_Request < Request
    include Aws_Routes

    def initialize(auth, current_schema)
        super(auth, current_schema, ENV['AWS_API_URL'], self.list)
    end

    def is_authd?
        self.fetch("#{list[0]}&DryRun=true")
    end
end
