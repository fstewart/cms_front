json.array!(@events) do |event|
  json.extract! event, :id, :event_category_id, :name, :url, :event_date, :event_end_date, :short_desc, :desc, :status, :google_event_id
  json.url event_url(event, format: :json)
end
