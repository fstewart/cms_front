# == Schema Information
#
# Table name: graduate_profiles
#
#  id                :integer          not null, primary key
#  first_name        :string(255)
#  middle_initial    :string(255)
#  last_name         :string(255)
#  nickname          :string(255)
#  email             :string(255)
#  phone             :string(255)
#  hometown          :string(255)
#  candidate_type    :string(255)
#  grad_class        :string(255)
#  ug_school         :string(255)
#  ug_year           :string(255)
#  work_experience   :text(65535)
#  activities_honors :text(65535)
#  internship        :text(65535)
#  cskills           :text(65535)
#  avatar            :string(255)
#  cv                :string(255)
#  status            :boolean
#  registered        :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class GraduateProfile < ActiveRecord::Base
end
