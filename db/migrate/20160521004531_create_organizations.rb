class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :title
      t.text :desc
      t.string :himage

      t.timestamps null: false
    end
  end
end
