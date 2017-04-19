class CreateCollegeVideos < ActiveRecord::Migration
  def change
    create_table :college_videos do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
