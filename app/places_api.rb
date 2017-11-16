class PlacesApi
  attr_accessor :client

  def initialize
    @client = GooglePlaces::Client.new("AIzaSyAkN2RRmRDC2wE1lML6r49Up60fUPOiFtI")
  end

  def hospitals(lat, long)
    # if... need to validate latitude and longitude values
      @client.spots(lat, long, :name => 'hospital')
    # end
  end
end