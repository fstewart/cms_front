json.array!(@homepage_section_contents) do |homepage_section_content|
  json.extract! homepage_section_content, :id, :priority, :title, :body, :is_published
  json.url homepage_section_content_url(homepage_section_content, format: :json)
end
