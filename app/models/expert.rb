# == Schema Information
#
# Table name: experts
#
#  id           :integer          not null, primary key
#  profile_id   :integer
#  expertise_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class Expert < ActiveRecord::Base
  belongs_to :user
  belongs_to :expertise
end
