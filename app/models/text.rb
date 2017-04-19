# == Schema Information
#
# Table name: texts
#
#  id         :integer          not null, primary key
#  section_id :integer
#  priority   :integer
#  title      :string(255)
#  body       :text(65535)
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Text < ActiveRecord::Base
  belongs_to :section
end
