module Gce_Routes
    def list
        return [
            "/#{ENV['GCE_PROJECT']}/global/images"
        ]
    end

    def add_route(route)
        list.push(route)
    end
end
