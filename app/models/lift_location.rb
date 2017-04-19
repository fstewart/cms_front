# == Schema Information
#
# Table name: lift_locations
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  address        :string(255)
#  map_url        :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  lift_course_id :integer
#

class LiftLocation < ActiveRecord::Base
	has_many :lift_courses
end
