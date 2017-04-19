class CreateAlumniChapters < ActiveRecord::Migration
  def change
    create_table :alumni_chapters do |t|
      t.string :title
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :members
      t.boolean :active
      t.integer :alumni_event_id
      t.text :contact

      t.timestamps null: false
    end
  end
end
