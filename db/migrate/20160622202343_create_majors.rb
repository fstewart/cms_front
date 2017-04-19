class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.references :unit_type, index: true, foreign_key: true
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
  end
end
