class AddSlugToCollegeVideos < ActiveRecord::Migration
  def change
    add_column :college_videos, :slug, :string
    add_index :college_videos, :slug
  end
end
