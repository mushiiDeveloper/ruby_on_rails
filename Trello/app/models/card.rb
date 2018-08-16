class Card < ApplicationRecord
  belongs_to :list, required: true
  has_many :user_card_assignments, dependent: :destroy
  has_many :users, through: :user_card_assignments
  has_many :comments, dependent: :destroy
  has_many :attachments, as: :attachable
  has_and_belongs_to_many :labels

  validates :title, presence: true, length: {maximum: 50}
  validates :description, length: {maximum: 1_000}

  scope :by_labels, ->(label_ids) {
    joins(:labels).where(labels: {id: label_ids})
  }

  scope :by_assigned_users, ->(user_ids) do
    joins(:user_card_assignments).where(user_card_assignments: {user_id: user_ids})
  end

  scope :by_title, ->(str) do
    where(arel_table[:title].matches("%#{str}%"))
  end

  scope :should_be_done_until, ->(datetime) do
    where(arel_table[:due_date].lt(datetime)
              .and(arel_table[:completet_at].eq(nil)))
  end

  scope :overdue, -> {should_be_done_until(Time.now)}
end
