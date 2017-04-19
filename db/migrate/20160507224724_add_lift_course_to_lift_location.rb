class AddLiftCourseToLiftLocation < ActiveRecord::Migration
  def change
    add_reference :lift_locations, :lift_course, index: true, foreign_key: true
  end
end
