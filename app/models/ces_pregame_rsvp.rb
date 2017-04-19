# == Schema Information
#
# Table name: ces_pregame_rsvps
#
#  id                  :integer          not null, primary key
#  game1_comp_tickets  :integer
#  game1_paid_tickets  :integer
#  game1_child_tickets :integer
#  game2_comp_tickets  :integer
#  game2_paid_tickets  :integer
#  game2_child_tickets :integer
#  game3_comp_tickets  :integer
#  game3_paid_tickets  :integer
#  game3_child_tickets :integer
#  game4_comp_tickets  :integer
#  game4_paid_tickets  :integer
#  game4_child_tickets :integer
#  game5_comp_tickets  :integer
#  game5_paid_tickets  :integer
#  game5_child_tickets :integer
#  game6_comp_tickets  :integer
#  game6_paid_tickets  :integer
#  game6_child_tickets :integer
#  game7_comp_tickets  :integer
#  game7_paid_tickets  :integer
#  game7_child_tickets :integer
#  first_name          :string(255)
#  last_name           :string(255)
#  phone               :string(255)
#  email               :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class CesPregameRsvp < ActiveRecord::Base
end
