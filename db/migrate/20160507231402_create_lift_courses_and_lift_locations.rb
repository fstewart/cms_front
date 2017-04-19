class CreateLiftCoursesAndLiftLocations < ActiveRecord::Migration
  def change
    create_table :lift_courses_lift_locations do |t|
	    t.belongs_to :lift_course, index: true
	    t.belongs_to :lift_location, index: true
    end
  end
end
