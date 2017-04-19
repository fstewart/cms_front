class AddStatusToLiftCourse < ActiveRecord::Migration
  def change
    add_column :lift_courses, :status, :integer
  end
end
