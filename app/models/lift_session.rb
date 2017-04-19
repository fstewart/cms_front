# == Schema Information
#
# Table name: lift_sessions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LiftSession < ActiveRecord::Base
end
