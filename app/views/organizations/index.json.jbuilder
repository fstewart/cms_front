json.array!(@organizations) do |organization|
  json.extract! organization, :id, :title, :desc, :himage
  json.url organization_url(organization, format: :json)
end
