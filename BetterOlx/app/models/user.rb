class User < ApplicationRecord
  belongs_to :city
  has_many :authored_reviews, class_name: 'Review', foreign_key: :author_id
  has_many :reviews, as: :feedbacked
end
