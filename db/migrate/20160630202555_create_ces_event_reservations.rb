class CreateCesEventReservations < ActiveRecord::Migration
  def change
    create_table :ces_event_reservations do |t|
      t.references :ces_event, index: true, foreign_key: true
      t.string :title
      t.integer :comp_tickets
      t.integer :paid_adult_tickets
      t.integer :paid_child_tickets

      t.timestamps null: false
    end
  end
end
