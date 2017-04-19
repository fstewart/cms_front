class AddSectionToIconbox < ActiveRecord::Migration
  def change
    add_reference :iconboxes, :section, index: true, foreign_key: true
  end
end
