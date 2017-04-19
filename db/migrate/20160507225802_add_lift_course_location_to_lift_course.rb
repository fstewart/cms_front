class AddLiftCourseLocationToLiftCourse < ActiveRecord::Migration
  def change
    add_reference :lift_courses, :lift_location, index: true, foreign_key: true
  end
end
