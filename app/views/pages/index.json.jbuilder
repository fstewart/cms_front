json.array!(@pages) do |page|
  json.extract! page, :id, :parent_id, :unit_id, :title, :pagehead, :page_url, :external_url, :short_desc, :desc, :meta_title, :meta_keyword, :meta_description, :status
  json.url page_url(page, format: :json)
end
