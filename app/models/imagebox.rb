# == Schema Information
#
# Table name: imageboxes
#
#  id            :integer          not null, primary key
#  page_id       :integer
#  priority      :integer
#  image         :string(255)
#  title         :string(255)
#  desc          :string(255)
#  url           :string(255)
#  target        :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  layout        :string(255)
#  department_id :integer
#  section_id    :integer
#

class Imagebox < ActiveRecord::Base
  #belongs_to :page
  #belongs_to :department
  belongs_to :section
  mount_uploader :image, ImageBoxUploader

  enum layout: [ :Photobox, :ImageLink, :GreyBack, :BoxedIn ]

end
