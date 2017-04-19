class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :department, index: true, foreign_key: true
      t.integer :type
      t.string :name
      t.string :title
      t.string :address
      t.string :phone
      t.string :email
      t.string :photo
      t.string :current_research
      t.string :education
      t.string :achievements
      t.text :selected_publication
      t.boolean :status
      #t.string :slug

      t.timestamps null: false

    end
    #TODO this may be bad form
    #add_column :profiles, :slug, :string
    #add_index :profiles, :slug

  end
end
