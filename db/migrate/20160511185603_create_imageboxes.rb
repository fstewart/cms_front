class CreateImageboxes < ActiveRecord::Migration
  def change
    create_table :imageboxes do |t|
      t.references :page, index: true, foreign_key: true
      t.integer :priority
      t.string :image
      t.string :title
      t.string :desc
      t.string :url
      t.string :target

      t.timestamps null: false
    end
  end
end
