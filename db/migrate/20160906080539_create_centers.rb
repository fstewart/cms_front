class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.integer :unit_type_id
      t.string :name
      t.string :slug
      t.integer :building_id
      t.string :phone
      t.string :fax
      t.string :office
      t.string :mailing_address
      t.string :po_box
      t.string :header_image
      t.string :user_id
      t.string :facebook
      t.string :linkedin
      t.string :twitter
      t.string :instagram
      t.string :snapchat
      t.string :vimeo
      t.string :youtube
      t.string :contact_name
      t.string :contact_email

      t.timestamps null: false
    end
  end
end
