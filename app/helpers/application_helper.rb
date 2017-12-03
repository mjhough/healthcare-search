module ApplicationHelper

    def get_lat_long(search)
        Geocoder.search(search).first.data["geometry"]["location"]
    end
end