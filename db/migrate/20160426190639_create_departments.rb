class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.references :unit_type, index: true, foreign_key: true
      t.string :name
      t.string :phone
      t.string :fax
      t.string :office
      t.references :building, index: true, foreign_key: true
      t.string :po_box
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
