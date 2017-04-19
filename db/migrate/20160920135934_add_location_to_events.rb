class AddLocationToEvents < ActiveRecord::Migration
  def change
	  add_column :events, :location, :string
	  add_column :events, :event_start_time, :datetime
  end
end
