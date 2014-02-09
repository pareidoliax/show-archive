class User < ActiveRecord::Base
  has_many :attends
  has_many :events, through: :attends
  has_many :artists, through: :attends


  def venues
    self.events.collect(:venue).uniq
  end

end
