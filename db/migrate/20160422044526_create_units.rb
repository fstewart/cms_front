class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :unit_type, index: true, foreign_key: true
      t.string :name
      t.string :overview

      t.timestamps null: false
    end
  end
end
