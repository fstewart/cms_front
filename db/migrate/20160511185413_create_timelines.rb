class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.references :page, index: true, foreign_key: true
      t.date :event_date
      t.string :event_title
      t.text :event_content

      t.timestamps null: false
    end
  end
end
