class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :users
  serialize :user_id, Array
  belongs_to :group
  has_many :events
end
