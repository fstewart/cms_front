# == Schema Information
#
# Table name: accordions
#
#  id            :integer          not null, primary key
#  priority      :integer
#  title         :string(255)
#  desc          :text(65535)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  page_id       :integer
#  status        :boolean
#  department_id :integer
#  section_id    :integer
#

class Accordion < ActiveRecord::Base
	#belongs_to :page
	#belongs_to :department
	belongs_to :section

end
