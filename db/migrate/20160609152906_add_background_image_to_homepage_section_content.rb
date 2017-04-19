class AddBackgroundImageToHomepageSectionContent < ActiveRecord::Migration
  def change
    add_column :homepage_section_contents, :background_image, :string
    add_column :homepage_section_contents, :background_style, :string
  end
end
