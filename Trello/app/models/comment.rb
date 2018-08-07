class Comment < ApplicationRecord
  has_one :attachment, as: :attachable
end
