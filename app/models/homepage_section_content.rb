# == Schema Information
#
# Table name: homepage_section_contents
#
#  id                   :integer          not null, primary key
#  priority             :integer
#  title                :string(255)
#  body                 :text(65535)
#  is_published         :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  background_image     :string(255)
#  background_style     :string(255)
#  bg_image_option      :boolean
#  bg_image             :string(255)
#  background_option_id :integer
#  display_title        :boolean
#

class HomepageSectionContent < ActiveRecord::Base
  belongs_to :background_option

  mount_uploader :background_image, BackgroundImageUploader

end
