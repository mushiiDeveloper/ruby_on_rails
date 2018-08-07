class Card < ApplicationRecord
  belongs_to :list, required: true
  has_many :assigned_users, dependent: :destroy
  has_many :users, through: :assigned_users
  has_many :comments, dependent: :destroy
  has_many :attachments, as: :attachable
  has_and_belongs_to_many :labels

  validates :title, presence: true, length: {maximum: 50}
  validates :description, length: {maximum: 1_000}
end
