json.array!(@footer_layouts) do |footer_layout|
  json.extract! footer_layout, :id, :title, :desc, :status
  json.url footer_layout_url(footer_layout, format: :json)
end
