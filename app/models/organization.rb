# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  desc       :text(65535)
#  himage     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ActiveRecord::Base
end
