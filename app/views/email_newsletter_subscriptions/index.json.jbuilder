json.array!(@email_newsletter_subscriptions) do |email_newsletter_subscription|
  json.extract! email_newsletter_subscription, :id, :first_name, :last_name, :email
  json.url email_newsletter_subscription_url(email_newsletter_subscription, format: :json)
end
