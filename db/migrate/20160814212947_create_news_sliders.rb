class CreateNewsSliders < ActiveRecord::Migration
  def change
    create_table :news_sliders do |t|
      t.integer :priority
      t.string :title
      t.string :body
      t.string :full_slide
      t.string :url
      t.boolean :is_published

      t.timestamps null: false
    end
  end
end
