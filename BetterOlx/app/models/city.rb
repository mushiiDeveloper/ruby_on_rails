class City < ApplicationRecord
  has_many :users

  validates :name, :country, presence: true
  validates :name, uniqueness: true
end
