class Event < ActiveRecord::Base
  serialize :user_id, Array
  belongs_to :tournament
  has_one :group, through: :tournaments  
end
