class Question < ActiveRecord::Base
  belongs_to :users
  has_many :likes
  belongs_to :events
end
