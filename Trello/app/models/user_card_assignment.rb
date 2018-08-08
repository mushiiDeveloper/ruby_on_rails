class UserCardAssignment < ApplicationRecord
  belongs_to :user
  belongs_to :card

  validates :user, presence: true
  validates :card, presence: true
end
