class CreateLiftLocations < ActiveRecord::Migration
  def change
    create_table :lift_locations do |t|
      t.string :name
      t.string :address
      t.string :map_url

      t.timestamps null: false
    end
  end
end
