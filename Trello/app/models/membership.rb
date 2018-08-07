class Membership < ApplicationRecord
  belongs_to :dashboard
  belongs_to :user
end
