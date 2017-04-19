# == Schema Information
#
# Table name: ces_attendees
#
#  id                       :integer          not null, primary key
#  ces_event_id             :integer
#  ces_event_reservation_id :integer
#  first_name               :string(255)
#  last_name                :string(255)
#  phone                    :string(255)
#  email                    :string(255)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class CesAttendee < ActiveRecord::Base
  belongs_to :ces_event
  belongs_to :ces_event_reservation
end
