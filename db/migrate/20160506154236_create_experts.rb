class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :expertise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
