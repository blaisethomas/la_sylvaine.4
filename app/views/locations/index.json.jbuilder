json.array!(@locations) do |location|
  json.extract! location, :id, :name, :address1, :address2, :postcode, :latitude, :longitude
  json.url location_url(location, format: :json)
end
