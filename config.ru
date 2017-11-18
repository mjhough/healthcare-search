require "sinatra"
require "google_places"
require "pry"

require_relative "./app/application.rb"
require_relative "./app/places_api.rb"
run Application.new
# use PlacesApi.new