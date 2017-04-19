json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :title, :layout, :desc, :approved, :status
  json.url newsletter_url(newsletter, format: :json)
end
