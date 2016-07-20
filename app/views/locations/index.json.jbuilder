json.array!(@locations) do |location|
  json.extract! location, :id, :city, :state, :zipcode, :latitude, :longitude, :title, :description
  json.url location_url(location, format: :json)
end
