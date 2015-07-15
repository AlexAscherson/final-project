class EventsTournament < ActiveRecord::Base
  belongs_to :event
  belongs_to :tournament
end
