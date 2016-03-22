require 'request'
require 'gce_routes'

class Gce_Request < Request
    include Gce_Routes

    def initialize(auth, current_schema)
        super(auth, current_schema, ENV['GCE_API_URL'], self.list)
    end

    def is_authd?
        puts list[0]
        self.fetch(list[0])
    end
end
