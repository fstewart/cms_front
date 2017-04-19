# == Schema Information
#
# Table name: layers
#
#  id         :integer          not null, primary key
#  page_id    :integer
#  title      :string(255)
#  position   :integer
#  desc       :text(65535)
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Layer < ActiveRecord::Base
  belongs_to :page

  has_many :accordions
  accepts_nested_attributes_for :accordions, :allow_destroy => true

  has_many :listgroups
  accepts_nested_attributes_for :listgroups, :allow_destroy => true

  has_many :carousels
  accepts_nested_attributes_for :carousels, :allow_destroy => true

  has_many :calltoactions
  accepts_nested_attributes_for :calltoactions, :allow_destroy => true

  has_many :timelines
  accepts_nested_attributes_for :timelines, :allow_destroy => true

  has_many :imageboxes
  accepts_nested_attributes_for :imageboxes, :allow_destroy => true

  has_many :iconboxes
  accepts_nested_attributes_for :iconboxes, :allow_destroy => true

  has_many :galleries
  accepts_nested_attributes_for :galleries, :allow_destroy => true

end
