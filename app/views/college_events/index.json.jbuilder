json.array!(@college_events) do |college_event|
  json.extract! college_event, :id, :title, :desc, :department_id
  json.url college_event_url(college_event, format: :json)
end
