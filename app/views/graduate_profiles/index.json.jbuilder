json.array!(@graduate_profiles) do |graduate_profile|
  json.extract! graduate_profile, :id, :first_name, :middle_initial, :last_name, :nickname, :email, :phone, :hometown, :candidate_type, :class, :ug_school, :ug_year, :work_experience, :activities_honors, :internship, :cskills, :avatar, :cv, :status, :registered
  json.url graduate_profile_url(graduate_profile, format: :json)
end
