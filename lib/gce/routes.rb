module Lib
    module Gce
        module Routes
            list = [
                "/#{ENV['GCE_PROJECT']}/global/images"
            ]

            def Routes.add_route(route)
                list.push(route)
            end
        end
    end
end
