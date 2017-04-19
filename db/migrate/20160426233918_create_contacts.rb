class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :unit_type, index: true, foreign_key: true
      t.string :name
      t.string :title
      t.string :address_1
      t.string :address2
      t.string :address3
      t.string :phone
      t.string :email
      t.boolean :status

      t.timestamps null: false
    end
  end
end
