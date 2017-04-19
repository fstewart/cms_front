json.array!(@alumni_events) do |alumni_event|
  json.extract! alumni_event, :id, :title, :description, :location, :event_start, :event_end, :alumni_chapter_id
  json.url alumni_event_url(alumni_event, format: :json)
end
