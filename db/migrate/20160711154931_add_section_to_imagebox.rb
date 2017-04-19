class AddSectionToImagebox < ActiveRecord::Migration
  def change
    add_reference :imageboxes, :section, index: true, foreign_key: true
  end
end
