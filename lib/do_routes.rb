module DO_Routes
    def list
        return [
            '/images'
        ]
    end

    def add_route(route)
        list.push(route)
    end
end
