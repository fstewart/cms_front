# == Schema Information
#
# Table name: timelines
#
#  id            :integer          not null, primary key
#  page_id       :integer
#  event_date    :date
#  event_title   :string(255)
#  event_content :text(65535)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  status        :boolean
#  department_id :integer
#  section_id    :integer
#

class Timeline < ActiveRecord::Base
  #belongs_to :page
  #belongs_to :department
  belongs_to :section

end
