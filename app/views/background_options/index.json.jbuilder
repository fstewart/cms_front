json.array!(@background_options) do |background_option|
  json.extract! background_option, :id, :option
  json.url background_option_url(background_option, format: :json)
end
