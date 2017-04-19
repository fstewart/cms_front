# == Schema Information
#
# Table name: lift_instructors
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  email          :string(255)
#  phone          :string(255)
#  lift_course_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class LiftInstructor < ActiveRecord::Base
end
