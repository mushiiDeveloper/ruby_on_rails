class Dashboard < ApplicationRecord
  has_many :lists, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  belongs_to :owner, class_name: 'User', foreign_key: :user_id, required: true

  validates :title, length: {in: 3..30}

  scope :ordered_by_title, -> { order(:title) }
end
