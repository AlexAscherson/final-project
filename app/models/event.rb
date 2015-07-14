class Event < ActiveRecord::Base
  serialize :user_id, Array
  belongs_to :tournament
  has_one :group, through: :tournaments  
  scope :latestevent, -> { order 'start_date ASC' }
end
