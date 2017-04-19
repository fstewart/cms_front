class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.references :page, index: true, foreign_key: true
      t.string :title
      t.integer :position
      t.text :desc
      t.boolean :status

      t.timestamps null: false
    end
  end
end
