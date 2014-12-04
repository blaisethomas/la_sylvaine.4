json.array!(@pupil_has_lessons) do |pupil_has_lesson|
  json.extract! pupil_has_lesson, :id, :pupil_id, :lesson_id, :payment_id, :adjusted_price
  json.url pupil_has_lesson_url(pupil_has_lesson, format: :json)
end
