class User < ApplicationRecord
  belongs_to :city
  has_many :authored_reviews, class_name: 'Review', foreign_key: :author_id
  has_many :reviews, as: :feedbacked
  has_many :items, dependent: :destroy

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :email, presence: true,
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: true
  validates :username, :password,:phone_number, presence: true
  validates :phone_number, length: {minimum: 10, maximum: 13}, uniqueness: true
  validates :password,length: {minimum: 8, maximum: 30}
  validates :username, uniqueness: {case_sensitive: true},
            length: {
                in: 5..50,
                too_long: "%{count} characters is the maximum allowed"
            }
end
