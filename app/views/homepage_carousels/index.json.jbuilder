json.array!(@homepage_carousels) do |homepage_carousel|
  json.extract! homepage_carousel, :id, :title, :body, :image
  json.url homepage_carousel_url(homepage_carousel, format: :json)
end
