# == Schema Information
#
# Table name: phd_students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  bio        :string(255)
#  email      :string(255)
#  descriptor :string(255)
#  honors     :string(255)
#  photo      :string(255)
#  phd_id     :integer
#  cv         :string(255)
#  jmpaper    :string(255)
#  status     :boolean
#  pubfile    :string(255)
#  cvfile     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PhdStudent < ActiveRecord::Base
end
