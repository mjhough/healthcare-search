class Application
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/search/)
            input_item = req.path.split("/search/").last
            lat_long = input_item.split(",")
            lat = lat_long[0].to_f
            long = lat_long[1].to_f


            places = PlacesApi.new
            if places.hospitals(lat, long)
                places.hospitals(lat, long).each do |hospital|
                    resp.write "#{hospital.name}\n"
                end
            else
                resp.write "Please enter a valid location"
            end
        else
            resp.write "Route not found"
            resp.status = 404
        end
        resp.finish
    end
end