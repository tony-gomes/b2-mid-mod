class Ride < ApplicationRecord
  belongs_to :park
  validates_presence_of :name, :thrill_rating
end
