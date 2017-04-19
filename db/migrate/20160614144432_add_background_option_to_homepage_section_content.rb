class AddBackgroundOptionToHomepageSectionContent < ActiveRecord::Migration
  def change
    add_reference :homepage_section_contents, :background_option, index: true, foreign_key: true
  end
end
