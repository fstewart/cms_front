# == Schema Information
#
# Table name: departments
#
#  id           :integer          not null, primary key
#  unit_type_id :integer
#  name         :string(255)
#  phone        :string(255)
#  fax          :string(255)
#  office       :string(255)
#  building_id  :integer
#  po_box       :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  slug         :string(255)
#  url          :string(255)
#  header_image :string(255)
#  user_id      :integer
#

class Department < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :unit_type
  belongs_to :building
  #has_many :degree_categories
  #has_many :profiles #change to HABTM

  has_many :pages
  
  has_and_belongs_to_many :users

  mount_uploader :header_image, HeaderImageUploader
  validates_presence_of :name

  def should_generate_new_friendly_id?
    slug.blank? || url_changed?
  end

  scope :alphasort, lambda { order('name ASC')}
  scope :positionsort, lambda { order('id DESC')}
  scope :sorted, lambda { order('unit_type_id ASC') }
  scope :newest_first, lambda { order('pages.created_at DESC') }

end
