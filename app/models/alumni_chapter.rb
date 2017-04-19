# == Schema Information
#
# Table name: alumni_chapters
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  address         :string(255)
#  latitude        :float(24)
#  longitude       :float(24)
#  members         :integer
#  active          :boolean
#  alumni_event_id :integer
#  contact         :text(65535)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class AlumniChapter < ActiveRecord::Base
  has_and_belongs_to_many :alumni_events
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
