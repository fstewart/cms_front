# == Schema Information
#
# Table name: lift_students
#
#  id                 :integer          not null, primary key
#  first_name         :string(255)
#  last_name          :string(255)
#  email              :string(255)
#  lift_course_id     :integer
#  lift_instructor_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class LiftStudent < ActiveRecord::Base
  belongs_to :lift_course
  belongs_to :lift_instructor
end
