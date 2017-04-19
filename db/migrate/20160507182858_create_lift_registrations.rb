class CreateLiftRegistrations < ActiveRecord::Migration
  def change
    create_table :lift_registrations do |t|
      t.references :lift_course, index: true, foreign_key: true
      t.references :lift_student, index: true, foreign_key: true
      t.references :lift_instructor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
