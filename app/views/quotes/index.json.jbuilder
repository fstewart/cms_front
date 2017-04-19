json.array!(@quotes) do |quote|
  json.extract! quote, :id, :body, :author, :order
  json.url quote_url(quote, format: :json)
end
