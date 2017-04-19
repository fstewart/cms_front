class NewsSlider < ActiveRecord::Base

  mount_uploader :full_slide, FullSlideUploader

end
