# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  page_id    :integer
#  priority   :integer
#  image      :string(255)
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  img_alt    :string(255)
#  section_id :integer
#

class Gallery < ActiveRecord::Base
  #belongs_to :page
  belongs_to :section

  mount_uploader :image, ImageUploader

  scope :sorted, lambda { order('id ASC') }

end
