class CreateAccordions < ActiveRecord::Migration
  def change
    create_table :accordions do |t|
      t.integer :priority
      t.string :title
      t.text :desc

      t.timestamps null: false
    end
  end
end
