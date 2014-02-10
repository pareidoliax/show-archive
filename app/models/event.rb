class Event < ActiveRecord::Base
  has_many :venues
  has_many :artist
end
