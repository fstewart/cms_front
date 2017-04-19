class CreateCesEvents < ActiveRecord::Migration
  def change
    create_table :ces_events do |t|
      t.string :title
      t.text :description
      t.string :promo_image

      t.timestamps null: false
    end
  end
end
