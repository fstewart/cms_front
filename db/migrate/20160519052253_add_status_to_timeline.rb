class AddStatusToTimeline < ActiveRecord::Migration
  def change
    add_column :timelines, :status, :boolean
  end
end
