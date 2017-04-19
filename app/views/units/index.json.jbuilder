json.array!(@units) do |unit|
  json.extract! unit, :id, :unit_type_id, :name, :overview
  json.url unit_url(unit, format: :json)
end
