# == Schema Information
#
# Table name: embas
#
#  id           :integer          not null, primary key
#  unit_type_id :integer
#  name         :string(255)
#  slug         :string(255)
#  phone        :string(255)
#  fax          :string(255)
#  office       :string(255)
#  po_box       :string(255)
#  header_image :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Emba < ActiveRecord::Base
  extend FriendlyId
  belongs_to :unit_type

  has_many :degree_categories
  has_many :profiles
  has_many :calltoactions, :through => :pages
  has_many :accordions, :through => :pages
  has_many :listgroups, :through => :pages
  has_many :carousels, :through => :pages
  has_many :timelines, :through => :pages
  has_many :imageboxes, :through => :pages
  has_many :iconboxes, :through => :pages
  has_many :galleries, :through => :pages

  has_many :pages

  friendly_id :name, use: [:slugged, :history]

  mount_uploader :header_image, HeaderImageUploader

end
