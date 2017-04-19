class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.references :section, index: true, foreign_key: true
      t.integer :priority
      t.string :title
      t.text :body
      t.boolean :status

      t.timestamps null: false
    end
  end
end
