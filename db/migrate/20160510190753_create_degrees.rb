class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.references :unit_type, index: true, foreign_key: true
      t.references :department, index: true, foreign_key: true
      t.references :degree_category, index: true, primary_key: true
      t.string :name
      t.string :short_desc
      t.string :desc
      t.string :course_assigned
      t.boolean :status

      t.timestamps null: false
    end
  end
end
