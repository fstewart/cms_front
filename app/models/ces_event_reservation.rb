# == Schema Information
#
# Table name: ces_event_reservations
#
#  id                 :integer          not null, primary key
#  ces_event_id       :integer
#  title              :string(255)
#  comp_tickets       :integer
#  paid_adult_tickets :integer
#  paid_child_tickets :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CesEventReservation < ActiveRecord::Base
  belongs_to :ces_event
end
