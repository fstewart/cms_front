# == Schema Information
#
# Table name: degrees
#
#  id                 :integer          not null, primary key
#  unit_type_id       :integer
#  department_id      :integer
#  degree_category_id :integer
#  name               :string(255)
#  short_desc         :string(255)
#  desc               :string(255)
#  course_assigned    :string(255)
#  status             :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  slug               :string(255)
#

class Degree < ActiveRecord::Base
  extend FriendlyId
  belongs_to :unit_type
  belongs_to :degree_category
  belongs_to :department
  friendly_id :name, use: [:slugged, :history]
  validates_presence_of :name, :url

  def should_generate_new_friendly_id?
    slug.blank? || url_changed?
  end

end
