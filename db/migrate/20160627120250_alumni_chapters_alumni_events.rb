class AlumniChaptersAlumniEvents < ActiveRecord::Migration
  def change
    create_table :alumni_chapters_alumni_events, :id => false do |t|
      t.integer "alumni_chapter_id"
      t.integer "alumni_event_id"
    end
    add_index :alumni_chapters_alumni_events, ["alumni_chapter_id", "alumni_event_id"],
              :unique => true, :name => 'alumni_event_index'
  end
end
