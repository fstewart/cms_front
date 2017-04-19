# == Schema Information
#
# Table name: homepage_carousels
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  body          :text(65535)
#  image         :string(255)
#  priority      :integer
#  video         :string(255)
#  url           :string(255)
#  external_link :boolean
#  is_published  :boolean
#

class HomepageCarousel < ActiveRecord::Base

  mount_uploader :image, ImageUploader

end
