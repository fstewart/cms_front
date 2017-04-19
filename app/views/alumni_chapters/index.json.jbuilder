json.array!(@alumni_chapters) do |alumni_chapter|
  json.extract! alumni_chapter, :id, :title, :address, :latitude, :longitude, :members, :active, :alumni_event_id, :contact
  json.url alumni_chapter_url(alumni_chapter, format: :json)
end
