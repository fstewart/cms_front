# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  body       :text(65535)
#  author     :string(255)
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quote < ActiveRecord::Base
end
