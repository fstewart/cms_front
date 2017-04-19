# == Schema Information
#
# Table name: ces_events
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  description     :text(65535)
#  ces_promo       :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_published    :boolean
#  rsvp_start_date :datetime
#  rsvp_end_date   :datetime
#  slug            :string(255)
#

class CesEvent < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	has_many :pages

	has_many :ces_event_reservations
	accepts_nested_attributes_for :ces_event_reservations, :allow_destroy => true

	has_many :ces_event_attendees
	accepts_nested_attributes_for :ces_event_reservations, :allow_destroy => true

	mount_uploader :ces_promo, CesPromoUploader

end
