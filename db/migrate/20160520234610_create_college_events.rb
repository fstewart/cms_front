class CreateCollegeEvents < ActiveRecord::Migration
  def change
    create_table :college_events do |t|
      t.string :title
      t.text :desc
      t.references :department, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
