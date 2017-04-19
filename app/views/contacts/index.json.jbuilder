json.array!(@contacts) do |contact|
  json.extract! contact, :id, :unit_type_id, :name, :title, :address_1, :address2, :address3, :phone, :email, :status
  json.url contact_url(contact, format: :json)
end
