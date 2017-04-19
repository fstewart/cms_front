# == Schema Information
#
# Table name: carousels
#
#  id             :integer          not null, primary key
#  page_id        :integer
#  slide_priority :integer
#  slide_image    :string(255)
#  slide_title    :string(255)
#  slide_desc     :string(255)
#  video          :boolean
#  video_url      :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  status         :boolean
#  department_id  :integer
#  section_id     :integer
#

class Carousel < ActiveRecord::Base
  belongs_to :section

  mount_uploader :slide_image, SlideImageUploader

  scope :sorted, lambda { order('slide_priority ASC') }

end
