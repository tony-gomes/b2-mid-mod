class Park < ApplicationRecord
  has_many :rides
  validates_presence_of :name, :admission_price

  def average_thrill_ratings
  end
end
