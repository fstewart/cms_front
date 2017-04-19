class CreateListgroups < ActiveRecord::Migration
  def change
    create_table :listgroups do |t|
      t.references :page, index: true, foreign_key: true
      t.integer :priority
      t.string :title
      t.text :desc

      t.timestamps null: false
    end
  end
end
