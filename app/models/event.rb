# == Schema Information
#
# Table name: events
#
#  id                :integer          not null, primary key
#  event_category_id :integer
#  name              :string(255)
#  url               :string(255)
#  event_date        :datetime
#  event_end_date    :datetime
#  short_desc        :string(255)
#  desc              :string(255)
#  status            :boolean
#  google_event_id   :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  event_photo       :string(255)
#

class Event < ActiveRecord::Base
  #extend FriendlyId
  belongs_to :event_category
  
  #friendly_id :name, use: :slugged

  mount_uploader :event_photo, EventPhotoUploader

  scope :published, lambda { where(:status => true) }
  scope :unpublished, lambda { where(:status => false) }
  scope :sorted, lambda { order('events.created_at DESC') }

end
