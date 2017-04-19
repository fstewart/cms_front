class CreateProgramsUsers < ActiveRecord::Migration
  def change
    create_table :programs_users, :id => false do |t|
      t.references :program, :user
    end
    
    add_index :programs_users, [:program_id, :user_id]
  end
end
