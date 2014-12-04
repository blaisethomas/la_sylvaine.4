json.array!(@pupil_has_years) do |pupil_has_year|
  json.extract! pupil_has_year, :id, :year_id, :payment_id, :pupil_id, :adjusted_price
  json.url pupil_has_year_url(pupil_has_year, format: :json)
end
