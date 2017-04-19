class AddElevatorToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :elevator, :boolean
  end
end
