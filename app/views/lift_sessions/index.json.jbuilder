json.array!(@lift_sessions) do |lift_session|
  json.extract! lift_session, :id, :name
  json.url lift_session_url(lift_session, format: :json)
end
