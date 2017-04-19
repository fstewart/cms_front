# == Schema Information
#
# Table name: expertises
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Expertise < ActiveRecord::Base
	has_many :experts
	has_many :users, through: :experts
	
	def self.counts
    	self.select("name, count(experts.expertise_id) as count").joins(:experts).group("experts.expertise_id")
  	end 
  
end
