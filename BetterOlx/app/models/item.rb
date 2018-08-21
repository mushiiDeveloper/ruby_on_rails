class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, length: {minimum: 5, maximum: 40}

end
