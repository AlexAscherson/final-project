class Tournament < ActiveRecord::Base
  serialize :user_id, Array
end
