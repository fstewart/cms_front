class CreatePhdStudents < ActiveRecord::Migration
  def change
    create_table :phd_students do |t|
      t.string :name
      t.string :bio
      t.string :email
      t.string :descriptor
      t.string :honors
      t.string :photo
      t.integer :phd_id
      t.string :cv
      t.string :jmpaper
      t.boolean :status
      t.string :pubfile
      t.string :cvfile

      t.timestamps null: false
    end
  end
end
