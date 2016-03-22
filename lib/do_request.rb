require 'request'
require 'do_routes'

class DO_Request < Request
    include DO_Routes

    def initialize(auth, current_schema)
        super(auth, current_schema, ENV['DO_API_URL'], self.list)
    end

    def is_authd?
        self.fetch(list[0])
    end
end
