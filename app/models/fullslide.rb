class Fullslide < ActiveRecord::Base
  belongs_to :section
  mount_uploader :full_slider_image, FullSlideUploader
end
