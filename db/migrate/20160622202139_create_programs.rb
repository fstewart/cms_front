class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.references :unit_type, index: true, foreign_key: true
      t.string :name
      t.string :slug
      t.references :building, index: true, foreign_key: true
      t.string :phone
      t.string :fax
      t.string :office
      t.string :po_box
      t.string :header_image

      t.timestamps null: false
    end
  end
end
