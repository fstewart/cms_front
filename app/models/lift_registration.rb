# == Schema Information
#
# Table name: lift_registrations
#
#  id                 :integer          not null, primary key
#  lift_course_id     :integer
#  lift_student_id    :integer
#  lift_instructor_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class LiftRegistration < ActiveRecord::Base
  belongs_to :lift_course
  belongs_to :lift_student
  belongs_to :lift_instructor
end
