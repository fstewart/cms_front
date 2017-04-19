# == Schema Information
#
# Table name: buildings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string(255)
#  url        :string(255)
#  body       :string(255)
#

class Building < ActiveRecord::Base
  extend FriendlyId
  has_many :departments
  friendly_id :url, use: [:slugged, :history]
  validates_presence_of :name
  has_many :programs
  has_many :users

  friendly_id :name, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    slug.blank? || url_changed?
  end
end
