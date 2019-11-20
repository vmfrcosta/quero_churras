class Grill < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :bookings
  belongs_to :user
  has_many :reviews
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :grills_type, presence: true
  validates :price, presence: true
  validates :status, presence: true
end
