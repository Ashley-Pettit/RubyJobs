class Event < ActiveRecord::Base
  has_many :likes
  has_many :users
end
