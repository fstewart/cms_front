class CreateCesAttendees < ActiveRecord::Migration
  def change
    create_table :ces_attendees do |t|
      t.references :ces_event, index: true, foreign_key: true
      t.references :ces_event_reservation, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
