module Aws_Routes
    def list
        return [
            '/?Action=DescribeImages'
        ]
    end

    def add_route(route)
        list.push(route)
    end
end
