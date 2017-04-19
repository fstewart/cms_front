class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.string :layout
      t.string :desc
      t.boolean :approved
      t.boolean :status

      t.timestamps null: false
    end
  end
end
