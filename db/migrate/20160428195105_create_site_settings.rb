class CreateSiteSettings < ActiveRecord::Migration
  def change
    create_table :site_settings do |t|
      t.string :project_title
      t.string :site_url
      t.string :store_url
      t.integer :records_per_page
      t.string :contact_email
      t.string :social_facebook_link
      t.string :social_twitter_link
      t.string :social_linkedin_link
      t.string :social_snapchat_link

      t.timestamps null: false
    end
  end
end
