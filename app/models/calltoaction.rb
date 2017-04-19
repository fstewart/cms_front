# == Schema Information
#
# Table name: calltoactions
#
#  id         :integer          not null, primary key
#  priority   :integer
#  title      :string(255)
#  url        :string(255)
#  target     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  page_id    :integer
#  section_id :integer
#

class Calltoaction < ActiveRecord::Base
	belongs_to :page
	#belongs_to :department

	#enum target: { _blank: 0, faculty: 1}

end
