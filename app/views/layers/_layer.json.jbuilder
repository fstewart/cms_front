json.extract! layer, :id, :page_id, :title, :position, :desc, :status, :created_at, :updated_at
json.url layer_url(layer, format: :json)