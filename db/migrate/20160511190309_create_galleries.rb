class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.references :page, index: true, foreign_key: true
      t.integer :priority
      t.string :image
      t.boolean :status

      t.timestamps null: false
    end
  end
end
