# == Schema Information
#
# Table name: site_settings
#
#  id                   :integer          not null, primary key
#  project_title        :string(255)
#  site_url             :string(255)
#  store_url            :string(255)
#  records_per_page     :integer
#  contact_email        :string(255)
#  social_facebook_link :string(255)
#  social_twitter_link  :string(255)
#  social_linkedin_link :string(255)
#  social_snapchat_link :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class SiteSetting < ActiveRecord::Base
end
