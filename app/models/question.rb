class Question < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  belongs_to :events
end
