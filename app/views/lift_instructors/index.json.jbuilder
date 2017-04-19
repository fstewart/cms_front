json.array!(@lift_instructors) do |lift_instructor|
  json.extract! lift_instructor, :id, :name, :email, :phone, :lift_course_id
  json.url lift_instructor_url(lift_instructor, format: :json)
end
