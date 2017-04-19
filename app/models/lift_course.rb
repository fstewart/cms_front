# == Schema Information
#
# Table name: lift_courses
#
#  id               :integer          not null, primary key
#  session          :string(255)
#  title            :string(255)
#  description      :text(65535)
#  location         :string(255)
#  location_url     :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  start_date       :date
#  meeting_day      :integer
#  meeting_time     :string(255)
#  seats            :integer
#  status           :integer
#  end_date         :date
#  lift_location_id :integer
#

class LiftCourse < ActiveRecord::Base
		
	has_many :lift_students
	has_many :lift_instructors
	has_many :lift_registrations
	belongs_to :lift_location
	belongs_to :lift_session
	
	enum status: { "Open for Registration" => 0, "Late Registration" => 1, "Closed Registration" => 2  }
	
	enum meeting_day: { "Monday" => 0, "Tuesday" => 1, "Wednesday" => 2, "Thursday" => 3, "Friday" => 4, "Saturday" => 5  }
end
