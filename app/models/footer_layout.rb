# == Schema Information
#
# Table name: footer_layouts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  desc       :text(65535)
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FooterLayout < ActiveRecord::Base
end
