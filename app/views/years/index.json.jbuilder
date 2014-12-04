json.array!(@years) do |year|
  json.extract! year, :id, :year, :price
  json.url year_url(year, format: :json)
end
