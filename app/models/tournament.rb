class Tournament < ActiveRecord::Base
  serialize :user_id, Array
  belongs_to :group
  has_many :events
end
