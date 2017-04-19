class AddSectionToTimeline < ActiveRecord::Migration
  def change
    add_reference :timelines, :section, index: true, foreign_key: true
  end
end
