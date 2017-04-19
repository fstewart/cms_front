json.array!(@courses) do |course|
  json.extract! course, :id, :name, :code, :short_desc, :desc, :footnote, :type, :status
  json.url course_url(course, format: :json)
end
