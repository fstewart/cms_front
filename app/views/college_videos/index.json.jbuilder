json.array!(@college_videos) do |college_video|
  json.extract! college_video, :id, :name, :url
  json.url college_video_url(college_video, format: :json)
end
