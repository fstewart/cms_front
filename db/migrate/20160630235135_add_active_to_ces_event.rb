class AddActiveToCesEvent < ActiveRecord::Migration
  def change
    add_column :ces_events, :is_published, :boolean
    add_column :ces_events, :rsvp_start_date, :datetime
    add_column :ces_events, :rsvp_end_date, :datetime
    add_column :ces_events, :slug, :string
  end
end
