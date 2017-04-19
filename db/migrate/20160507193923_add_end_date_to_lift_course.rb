class AddEndDateToLiftCourse < ActiveRecord::Migration
  def change
    add_column :lift_courses, :end_date, :date
  end
end
