json.array!(@faqs) do |faq|
  json.extract! faq, :id, :department_id, :title, :desc, :status, :priority
  json.url faq_url(faq, format: :json)
end
