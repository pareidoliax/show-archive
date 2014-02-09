class Event < ActiveRecord::Base
  has_many :venues
  belongs_to :artist
end
