class User < ApplicationRecord
  has_many :owned_dashboards, class_name: 'Dashboard',
           foreign_key: :owner_id,
           dependent: :nullify
  has_many :memberships, dependent: :destroy
  has_many :dashboards, through: :memberships
  has_many :UserCardAssignment, dependent: :destroy
  has_many :cards, through: :UserCardAssignment

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :email, presence: true,
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: true
  validates :username, :password, :email, presence: true
  validates :password, length: {minimum: 10, maximum: 25}
  validates :username, uniqueness: {case_sensitive: true},
            length: {
                in: 5..50,
                too_long: "%{count} characters is the maximum allowed"
            }
end
