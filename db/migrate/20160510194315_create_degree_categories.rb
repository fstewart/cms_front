class CreateDegreeCategories < ActiveRecord::Migration
  def change
    create_table :degree_categories do |t|
      t.references :unit_type, index: true, foreign_key: true
      t.references :department, index: true, foreign_key: true
      t.string :name
      t.string :desc
      t.boolean :status

      t.timestamps null: false
    end
  end
end
