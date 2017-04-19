# == Schema Information
#
# Table name: faqs
#
#  id            :integer          not null, primary key
#  department_id :integer
#  title         :string(255)
#  desc          :string(255)
#  status        :boolean
#  priority      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Faq < ActiveRecord::Base
  extend FriendlyId
  belongs_to :department
end
