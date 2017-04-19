# == Schema Information
#
# Table name: email_newsletter_subscriptions
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EmailNewsletterSubscription < ActiveRecord::Base
end
