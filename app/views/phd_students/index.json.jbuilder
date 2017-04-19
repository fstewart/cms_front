json.array!(@phd_students) do |phd_student|
  json.extract! phd_student, :id, :name, :bio, :email, :descriptor, :honors, :photo, :phd_id, :cv, :jmpaper, :status, :pubfile, :cvfile
  json.url phd_student_url(phd_student, format: :json)
end
