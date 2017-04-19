# == Schema Information
#
# Table name: listgroups
#
#  id         :integer          not null, primary key
#  page_id    :integer
#  priority   :integer
#  title      :string(255)
#  desc       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :boolean
#  section_id :integer
#

class Listgroup < ActiveRecord::Base
  #belongs_to :page
  belongs_to :section
end
