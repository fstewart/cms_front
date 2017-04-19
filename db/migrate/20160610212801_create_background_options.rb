class CreateBackgroundOptions < ActiveRecord::Migration
  def change
    create_table :background_options do |t|
      t.string :option

      t.timestamps null: false
    end
  end
end
