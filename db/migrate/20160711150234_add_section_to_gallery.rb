class AddSectionToGallery < ActiveRecord::Migration
  def change
    add_reference :galleries, :section, index: true, foreign_key: true
  end
end
