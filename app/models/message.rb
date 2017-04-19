# == Schema Information
#
# Table name: messages
#
#  id              :integer          not null, primary key
#  body            :text(65535)
#  conversation_id :integer
#  user_id         :integer
#  read            :boolean          default(FALSE)
#  created_at      :datetime
#  updated_at      :datetime
#

class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :body, :conversation_id, :user_id
	

end
