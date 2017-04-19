# == Schema Information
#
# Table name: alumni_achievements
#
#  id                          :integer          not null, primary key
#  title                       :string(255)
#  first_name                  :string(255)
#  last_name                   :string(255)
#  suffix                      :string(255)
#  grad_class                  :string(255)
#  email                       :string(255)
#  major                       :string(255)
#  current_job_title           :string(255)
#  current_employer            :string(255)
#  current_city                :string(255)
#  favorite_professor_or_class :string(255)
#  job_history                 :text(65535)
#  achievements                :text(65535)
#  media                       :string(255)
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#

class AlumniAchievement < ActiveRecord::Base

  #attribute :first_name,:validate => true
  #attribute :last_name, :validate => true
  #attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  #attribute :suffix
  #attribute :grad_class
  #attribute :major
  #attribute :current_job_title
  #attribute :current_employer
  #attribute :current_city
  #attribute :favorite_professor_or_class
  #attribute :job_history
  #attribute :achievements
  #attribute :media

  def fullname
    "#{first_name} #{last_name}"
  end

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
        :subject => "Culverhouse Alumni Achievement",
        :to => "fstewart@culverhouse.ua.edu",
        :from => %("#{fullname}" <#{email}>)
    }
  end

end
