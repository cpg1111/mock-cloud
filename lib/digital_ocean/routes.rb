module Lib
    module Digital_Ocean
        module Routes
            list = [
                '/images'
            ]

            def Routes.add_route(route)
                list.push(route)
            end
        end
    end
end
