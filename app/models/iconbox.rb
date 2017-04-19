# == Schema Information
#
# Table name: iconboxes
#
#  id            :integer          not null, primary key
#  page_id       :integer
#  priority      :integer
#  icon          :string(255)
#  title         :string(255)
#  desc          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  status        :boolean
#  department_id :integer
#  section_id    :integer
#

class Iconbox < ActiveRecord::Base
  #belongs_to :page
  #belongs_to :department
  belongs_to :section
end
