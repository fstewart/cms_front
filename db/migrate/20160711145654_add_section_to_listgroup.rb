class AddSectionToListgroup < ActiveRecord::Migration
  def change
    add_reference :listgroups, :section, index: true, foreign_key: true
  end
end
