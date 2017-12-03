class SearchController < ApplicationController
    include ApplicationHelper

    def index
    end

    def new
        search = params[:search]
        lat = get_lat_long(search)["lat"]
        lng = get_lat_long(search)["lng"]
        places = PlacesApi.new
        @places = places.hospitals(lat, lng)
    end
end