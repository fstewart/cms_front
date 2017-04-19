# == Schema Information
#
# Table name: college_events
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  desc          :text(65535)
#  department_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class CollegeEvent < ActiveRecord::Base
  belongs_to :department
  has_many :pages
end
