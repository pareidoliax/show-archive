class User < ActiveRecord::Base
  has_many :attends
  has_many :events, through: :attends
  has_many :artists, through: :attends
  has_many :venues, through: :attends
  has_secure_password
  validates_uniqueness_of :email


  def venues
    self.events.collect(:venue).uniq
  end

  def artists
    self.events.collect(:artist).uniq
  end

end
