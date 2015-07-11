class Event < ActiveRecord::Base
  belongs_to :tournament
  has_one :group, through: :tournaments  
end
