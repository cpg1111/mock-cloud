module Lib
    module Aws
        module Routes
            list = [
                '/?Action=DescribeImages'
            ]

            def Routes.add_route(route)
                list.push(route)
            end
        end
    end
end
