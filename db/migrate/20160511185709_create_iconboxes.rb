class CreateIconboxes < ActiveRecord::Migration
  def change
    create_table :iconboxes do |t|
      t.references :page, index: true, foreign_key: true
      t.integer :priority
      t.string :icon
      t.string :title
      t.string :desc

      t.timestamps null: false
    end
  end
end
