class Grill < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :grills_type, presence: true
  validates :price, presence: true
  validates :status, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
