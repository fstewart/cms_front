class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.string :short_desc
      t.string :desc
      t.string :footnote
      t.boolean :type
      t.boolean :status

      t.timestamps null: false
    end
  end
end
