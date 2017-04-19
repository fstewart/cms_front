json.array!(@lift_locations) do |lift_location|
  json.extract! lift_location, :id, :name, :address, :map_url
  json.url lift_location_url(lift_location, format: :json)
end
