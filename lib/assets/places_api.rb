class PlacesApi
    attr_accessor :client
  
    def initialize
      @client = GooglePlaces::Client.new("AIzaSyAkN2RRmRDC2wE1lML6r49Up60fUPOiFtI")
    end
  
    def hospitals(lat, lng)
        client.spots(lat, lng, :name => 'hospital')
    end
end