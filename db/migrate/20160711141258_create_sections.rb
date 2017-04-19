class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :page, index: true, foreign_key: true
      t.integer :position
      t.string :title
      t.text :desc
      t.boolean :status

      t.timestamps null: false
    end
  end
end
