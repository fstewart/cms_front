class CreateLiftInstructors < ActiveRecord::Migration
  def change
    create_table :lift_instructors do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :lift_course_id

      t.timestamps null: false
    end
  end
end
