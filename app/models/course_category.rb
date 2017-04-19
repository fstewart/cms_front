# == Schema Information
#
# Table name: course_categories
#
#  id            :integer          not null, primary key
#  department_id :integer
#  name          :string(255)
#  desc          :string(255)
#  status        :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class CourseCategory < ActiveRecord::Base
  belongs_to :department
end
