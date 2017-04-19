class CreateMandersonVisitors < ActiveRecord::Migration
  def change
    create_table :manderson_visitors do |t|
      t.references :user, index: true, foreign_key: true
      t.string :reason_for_visit
      t.string :visitor_type
      t.string :visitor_cwid
      t.string :visitor_name
      t.string :visitor_email
      t.string :visitor_grad_year

      t.timestamps null: false
    end
  end
end
