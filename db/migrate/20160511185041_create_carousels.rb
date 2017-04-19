class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.references :page, index: true, foreign_key: true
      t.integer :slide_priority
      t.string :slide_image
      t.string :slide_title
      t.string :slide_desc
      t.boolean :video
      t.string :video_url

      t.timestamps null: false
    end
  end
end
