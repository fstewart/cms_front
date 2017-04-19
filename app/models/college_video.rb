# == Schema Information
#
# Table name: college_videos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string(255)
#

class CollegeVideo < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    slug.blank?
  end
end
