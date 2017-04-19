class AddSectionToCalltoaction < ActiveRecord::Migration
  def change
    add_reference :calltoactions, :section, index: true, foreign_key: true
  end
end
