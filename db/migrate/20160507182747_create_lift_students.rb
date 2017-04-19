class CreateLiftStudents < ActiveRecord::Migration
  def change
    create_table :lift_students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :lift_course, index: true, foreign_key: true
      t.references :lift_instructor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
