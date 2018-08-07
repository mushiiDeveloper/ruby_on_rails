class List < ApplicationRecord
  belongs_to :dashboard

  validates :title, presence: true, length: {maximum: 50}
end
