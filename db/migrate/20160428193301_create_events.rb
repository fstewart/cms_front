class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :event_category, index: true, foreign_key: true
      t.string :name
      t.string :url
      t.datetime :event_date
      t.datetime :event_end_date
      t.string :short_desc
      t.string :desc
      t.boolean :status
      t.string :google_event_id

      t.timestamps null: false
    end
  end
end
