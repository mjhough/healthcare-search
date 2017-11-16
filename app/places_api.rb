class PlacesApi
  attr_accessor :client

  def initialize
    @client = GooglePlaces::Client.new("AIzaSyAkN2RRmRDC2wE1lML6r49Up60fUPOiFtI")
  end

  def hospitals(lat, long)
    if lat.to_s.length >= -90 && lat.to_s.length <= 90 && long.to_s.length >= -180 && long.to_s.length <= 180
      @client.spots(lat, long, :name => 'hospital') 
    end
  end
end