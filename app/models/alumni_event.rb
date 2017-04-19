# == Schema Information
#
# Table name: alumni_events
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  description       :text(65535)
#  location          :string(255)
#  event_start       :datetime
#  event_end         :datetime
#  alumni_chapter_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class AlumniEvent < ActiveRecord::Base
  has_and_belongs_to_many :alumni_chapters
end
