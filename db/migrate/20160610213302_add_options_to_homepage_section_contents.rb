class AddOptionsToHomepageSectionContents < ActiveRecord::Migration
  def change
    add_column :homepage_section_contents, :bg_image_option, :boolean
    add_column :homepage_section_contents, :bg_image, :string
  end
end
