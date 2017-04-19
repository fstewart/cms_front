json.array!(@degree_categories) do |degree_category|
  json.extract! degree_category, :id, :department_id, :unit_id, :name, :desc, :status
  json.url degree_category_url(degree_category, format: :json)
end
