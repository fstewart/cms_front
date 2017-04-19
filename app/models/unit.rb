# == Schema Information
#
# Table name: units
#
#  id           :integer          not null, primary key
#  unit_type_id :integer
#  name         :string(255)
#  overview     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Unit < ActiveRecord::Base
  has_many :sections, :dependent => :destroy
  has_many :sections
  belongs_to :unit_type, :class_name => 'UnitType'
  accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
  belongs_to :unit_type
  has_many :pages
end
