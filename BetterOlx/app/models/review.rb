class Review < ApplicationRecord
  belongs_to :feedbacked, polymorphic: true
  belongs_to :author, class_name: 'User'
end
