class Countdown < ActiveRecord::Base

  belongs_to :section

  #def days_until
  #  remaining_days = Date.event_date - Date.today
  #end

end
