json.array!(@departments) do |department|
  json.extract! department, :id, :unit_type_id, :name, :phone, :fax, :office, :building_id, :po_box
  json.url department_url(department, format: :json)
end
