require 'net/http'
require 'json'

class Request
    def initialize(auth, current_schema, root, routes)
        @auth = auth
        @schema = current_schema
        @routes = routes
        @root_url = root
    end

    def get_auth
        return @auth
    end

    def set_auth(new_auth)
        @auth = new_auth
    end

    def get_schema
        return @schema
    end

    def fetch(route)
        uri = URI("#{@root_url}#{route}")
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        req = Net::HTTP::Get.new(uri)
        req.add_field('Authorization', @auth)
        res = http.request(req)
        if res.code == '200' then
            return res.body
        else
            raise "received a #{res.code} on #{route}"
        end
    end

    def res_to_hash(res)
        begin
            return JSON.parse(res)
        rescue TypeError => err
            puts "Cannot parse response, expected JSON, #{err}"
        end
    end

    def json_to_schema(json_res)
        schema = Hash.new
        json_res.each do |key|
            if json_res[key].is_a?(Hash) then
                schema[key] = json_to_schema(json_res[key])
            else
                schema[key] = json_res.class
            end
        end
        return schema
    end

    def fetch_schema
        routes.each do |route|
            print "Fetching #{@root_url}#{route}"
            res = self.fetch(route)
            json_res = self.res_to_hash(res)
            @schema = self.json_to_schema(json_res)
        end
    end
end
