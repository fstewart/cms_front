class CreateCalltoactions < ActiveRecord::Migration
  def change
    create_table :calltoactions do |t|
      t.integer :priority
      t.string :title
      t.string :url
      t.string :target

      t.timestamps null: false
    end
  end
end
