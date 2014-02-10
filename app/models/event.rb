class Event < ActiveRecord::Base
  has_many :venues
  has_many :artists
  belongs_to :attend
end
