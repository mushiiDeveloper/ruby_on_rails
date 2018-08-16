class Item < ApplicationRecord
  belongs_to :User
  belongs_to :Category
end
