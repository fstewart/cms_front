json.array!(@ces_events) do |ces_event|
  json.extract! ces_event, :id, :title, :description, :promo_image
  json.url ces_event_url(ces_event, format: :json)
end
