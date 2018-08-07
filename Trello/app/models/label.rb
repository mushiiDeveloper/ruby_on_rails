class Label < ApplicationRecord
  has_and_belongs_to_many :cards

  enum color: { red: 0, blue: 1, green: 2, yellow: 3 }
end
