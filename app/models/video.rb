# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  section_id :integer
#  title      :string(255)
#  video_file :string(255)
#  url        :string(255)
#  status     :boolean
#  position   :integer
#

class Video < ActiveRecord::Base
  belongs_to :section

  mount_uploader :video_file, VideoFileUploader

end
