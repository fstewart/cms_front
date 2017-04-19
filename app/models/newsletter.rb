# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  layout     :string(255)
#  desc       :string(255)
#  approved   :boolean
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newsletter < ActiveRecord::Base
end
