class CreateLiftCourses < ActiveRecord::Migration
  def change
    create_table :lift_courses do |t|
      t.string :session
      t.string :title
      t.text :description
      t.string :location
      t.string :location_url

      t.timestamps null: false
    end
  end
end
