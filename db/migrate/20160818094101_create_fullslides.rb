class CreateFullslides < ActiveRecord::Migration
  def change
    create_table :fullslides do |t|
      t.references :section, index: true, foreign_key: true
      t.integer :priority
      t.string :title
      t.string :desc
      t.string :video_url
      t.string :full_slider_image
      t.boolean :status

      t.timestamps null: false
    end
  end
end
