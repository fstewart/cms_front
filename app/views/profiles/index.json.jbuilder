json.array!(@profiles) do |profile|
  json.extract! profile, :id, :department_id, :type, :name, :title, :address, :phone, :email, :photo, :current_research, :education, :achievements, :selected_publication, :status
  json.url profile_url(profile, format: :json)
end
