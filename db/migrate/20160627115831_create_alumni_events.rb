class CreateAlumniEvents < ActiveRecord::Migration
  def change
    create_table :alumni_events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :event_start
      t.datetime :event_end
      t.integer :alumni_chapter_id

      t.timestamps null: false
    end
  end
end
