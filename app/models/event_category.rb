# == Schema Information
#
# Table name: event_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventCategory < ActiveRecord::Base
  has_many :events
end
