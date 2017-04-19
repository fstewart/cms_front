json.array!(@module_carousels) do |module_carousel|
  json.extract! module_carousel, :id, :priority, :title, :desc
  json.url module_carousel_url(module_carousel, format: :json)
end
