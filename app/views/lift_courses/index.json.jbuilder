json.array!(@lift_courses) do |lift_course|
  json.extract! lift_course, :id, :session, :title, :description, :location, :location_url
  json.url lift_course_url(lift_course, format: :json)
end
