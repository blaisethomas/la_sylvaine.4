json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :location_id, :price, :genre, :grade
  json.url lesson_url(lesson, format: :json)
end
