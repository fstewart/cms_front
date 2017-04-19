class CreateCourseCategories < ActiveRecord::Migration
  def change
    create_table :course_categories do |t|
      t.references :department, index: true, foreign_key: true
      t.string :name
      t.string :desc
      t.boolean :status

      t.timestamps null: false
    end
  end
end
