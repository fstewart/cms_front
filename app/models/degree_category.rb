# == Schema Information
#
# Table name: degree_categories
#
#  id            :integer          not null, primary key
#  unit_type_id  :integer
#  department_id :integer
#  name          :string(255)
#  desc          :string(255)
#  status        :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slug          :string(255)
#  url           :string(255)
#

class DegreeCategory < ActiveRecord::Base
  extend FriendlyId
  belongs_to :department
  has_many :degrees
  friendly_id :url, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    slug.blank? || url_changed?
  end
end
