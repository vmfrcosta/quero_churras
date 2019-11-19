class Grill < ApplicationRecord
  belongs_to :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :banana, presence: true
  validates :price, presence: true
  validates :status, presence: true
end
