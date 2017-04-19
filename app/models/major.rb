# == Schema Information
#
# Table name: majors
#
#  id           :integer          not null, primary key
#  unit_type_id :integer
#  name         :string(255)
#  slug         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Major < ActiveRecord::Base
  belongs_to :unit_type
end
