class Group < ActiveRecord::Base
  has_and_belongs_to_many :users
  serialize :user_id, Array
  has_many :tournaments
  has_many :events, through: :tournaments
end
