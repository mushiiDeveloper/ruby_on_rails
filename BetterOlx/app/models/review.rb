class Review < ApplicationRecord
  belongs_to :feedbacked, polymorphic: true
  belongs_to :author, class_name: 'User'

  validates :text, presence: true, length: {minimum: 5, maximum: 100}

end
