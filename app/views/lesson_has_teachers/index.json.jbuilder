json.array!(@lesson_has_teachers) do |lesson_has_teacher|
  json.extract! lesson_has_teacher, :id, :lesson_id, :teacher_id
  json.url lesson_has_teacher_url(lesson_has_teacher, format: :json)
end
