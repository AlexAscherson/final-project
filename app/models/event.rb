class Event < ActiveRecord::Base
  serialize :user_id, Array
  belongs_to :tournament
  has_and_belongs_to_many :users
  has_one :group, through: :tournaments  
  scope :latestevent, -> { order 'start_date ASC' }
  ratyrate_rateable "Starter", "Main", "Desert", "Entertainment"
end
