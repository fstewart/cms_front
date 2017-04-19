class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.references :department, index: true, foreign_key: true
      t.string :title
      t.string :desc
      t.boolean :status
      t.integer :priority

      t.timestamps null: false
    end
  end
end
