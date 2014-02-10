class Attend < ActiveRecord::Base
  belongs_to :user
  has_many :events
  has_many :artists, through: :events
  has_many :venues, through: :events

  attr_accessor :events_attributes

  accepts_nested_attributes_for :artists
  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :venues
end
