# == Schema Information
#
# Table name: background_options
#
#  id         :integer          not null, primary key
#  option     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BackgroundOption < ActiveRecord::Base
  has_many :homepage_section_contents
end
