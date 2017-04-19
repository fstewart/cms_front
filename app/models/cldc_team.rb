class CldcTeam< ActiveRecord::Base

  include MultiStepModel

  mount_uploader :resume1, CldcResume1Uploader
  mount_uploader :resume2, CldcResume2Uploader
  mount_uploader :resume3, CldcResume3Uploader

  def self.total_steps
    3
  end

end