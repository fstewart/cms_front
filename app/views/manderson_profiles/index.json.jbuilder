json.array!(@manderson_profiles) do |manderson_profile|
  json.extract! manderson_profile, :id, :first_name, :middle_initial, :last_name, :nickname, :email, :phone, :hometown, :candidate_type, :class, :ug_school, :ug_degree, :ug_year, :work_experience, :activities_honors, :internship, :cskills, :avatar, :cv_link, :status, :registered
  json.url manderson_profile_url(manderson_profile, format: :json)
end
