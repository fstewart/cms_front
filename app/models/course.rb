# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  code       :string(255)
#  short_desc :string(255)
#  desc       :string(255)
#  footnote   :string(255)
#  type       :boolean
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ActiveRecord::Base
end
