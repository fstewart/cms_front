class AddTitleOptionToHomepageSection < ActiveRecord::Migration
  def change
    add_column :homepage_section_contents, :display_title, :boolean
  end
end
