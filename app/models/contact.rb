# == Schema Information
#
# Table name: contacts
#
#  id           :integer          not null, primary key
#  unit_type_id :integer
#  name         :string(255)
#  title        :string(255)
#  address_1    :string(255)
#  address2     :string(255)
#  address3     :string(255)
#  phone        :string(255)
#  email        :string(255)
#  status       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  slug         :string(255)
#  url          :string(255)
#

class Contact < ActiveRecord::Base
  extend FriendlyId
  belongs_to :unit_type
  friendly_id :url, use: [:slugged, :history]
  validates_presence_of :url

  def should_generate_new_friendly_id?
    slug.blank? ||url_changed?
  end
end
