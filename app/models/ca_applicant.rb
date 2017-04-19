class CaApplicant < ActiveRecord::Base

	mount_uploader :ca_cv, CaCvUploader

	# Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Culverhouse Ambassador Application",
      :to => "fstewart@cba.ua.edu",
      :from => %("#{name}" <#{email}>)
    }
  end

end
