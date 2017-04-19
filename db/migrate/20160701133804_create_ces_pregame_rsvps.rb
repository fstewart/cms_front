class CreateCesPregameRsvps < ActiveRecord::Migration
  def change
    create_table :ces_pregame_rsvps do |t|
      t.integer :game1_comp_tickets
      t.integer :game1_paid_tickets
      t.integer :game1_child_tickets
      t.integer :game2_comp_tickets
      t.integer :game2_paid_tickets
      t.integer :game2_child_tickets
      t.integer :game3_comp_tickets
      t.integer :game3_paid_tickets
      t.integer :game3_child_tickets
      t.integer :game4_comp_tickets
      t.integer :game4_paid_tickets
      t.integer :game4_child_tickets
      t.integer :game5_comp_tickets
      t.integer :game5_paid_tickets
      t.integer :game5_child_tickets
      t.integer :game6_comp_tickets
      t.integer :game6_paid_tickets
      t.integer :game6_child_tickets
      t.integer :game7_comp_tickets
      t.integer :game7_paid_tickets
      t.integer :game7_child_tickets
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
