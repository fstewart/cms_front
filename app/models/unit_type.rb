# == Schema Information
#
# Table name: unit_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  url        :string(255)
#  slug       :string(255)
#

class UnitType < ActiveRecord::Base
	extend FriendlyId
	has_many :units, :dependent => :destroy
	has_many :departments
	has_many :programs
	has_many :embas

	friendly_id :name, use: [:slugged, :history]

	validates_presence_of :url

	def to_param
		url
	end

end
