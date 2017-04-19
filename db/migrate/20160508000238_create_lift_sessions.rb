class CreateLiftSessions < ActiveRecord::Migration
  def change
    create_table :lift_sessions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
