json.array!(@degrees) do |degree|
  json.extract! degree, :id, :unit_type_id, :degree_category_id, :name, :short_desc, :desc, :course_assigned, :status
  json.url degree_url(degree, format: :json)
end
