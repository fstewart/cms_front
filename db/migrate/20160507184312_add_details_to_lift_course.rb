class AddDetailsToLiftCourse < ActiveRecord::Migration
  def change
    add_column :lift_courses, :start_date, :date
    add_column :lift_courses, :meeting_day, :integer
    add_column :lift_courses, :meeting_time, :string
    add_column :lift_courses, :seats, :integer
  end
end
