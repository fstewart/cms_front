json.array!(@sections) do |section|
  json.extract! section, :id, :page_id, :position, :title, :desc, :status
  json.url section_url(section, format: :json)
end
