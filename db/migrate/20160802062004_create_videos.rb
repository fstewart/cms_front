class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :section, index: true, foreign_key: true
      t.string :title
      t.string :video_file
      t.string :url
      t.boolean :status
      t.integer :position
    end
  end
end
