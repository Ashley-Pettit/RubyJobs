class Like < ActiveRecord::Base
  belongs_to :questions
  belongs_to :events
  belongs_to :users
end
