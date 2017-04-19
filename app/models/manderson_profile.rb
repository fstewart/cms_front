# == Schema Information
#
# Table name: manderson_profiles
#
#  id                      :integer          not null, primary key
#  first_name              :string(255)
#  middle_initial          :string(255)
#  last_name               :string(255)
#  nickname                :string(255)
#  email                   :string(255)
#  phone                   :string(255)
#  hometown                :string(255)
#  candidate_type          :integer
#  ug_school               :string(255)
#  ug_degree               :string(255)
#  ug_year                 :string(255)
#  work_experience         :text(65535)
#  activities_honors       :text(65535)
#  internship              :text(65535)
#  cskills                 :text(65535)
#  avatar                  :string(255)
#  cv_link                 :string(255)
#  status                  :boolean
#  registered              :boolean
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  grad_class              :integer
#  linkedin                :string(255)
#  fb                      :string(255)
#  favorite_book           :string(255)
#  favorite_quote          :string(255)
#  three_word_description  :string(255)
#  something_unique        :text(65535)
#  manderson_profile_photo :string(255)
#  manderson_profile_cv    :string(255)
#  volunteerism            :text(65535)
#

class MandersonProfile < ActiveRecord::Base
	
	enum candidate_type: { "MBA" => 0, "STEM Path To the MBA" => 1, "CREATE Path To the MBA" => 2, "University Scholar" => 3 }
	enum grad_class: { "2017" => 0, "2018" => 1, "2019" => 2 }
	
	mount_uploader :manderson_profile_photo, MandersonProfilePhotoUploader
	mount_uploader :manderson_profile_cv, MandersonProfileCvUploader
	
	scope :published, lambda { where(:status => true) }
	scope :alphasort, lambda { order('last_name ASC')}
	
	def self.search(search)
		where("first_name LIKE ?", "%#{search}%")
		where("last_name LIKE ?", "%#{search}%")
		where("ug_school LIKE ?", "%#{search}%")
	end
	
	
end
