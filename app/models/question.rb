class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author_id, class_name: 'User'

  validates :text, presence: true
  validates :text, length: { maximum: 255 }

  scope :answered, -> { where.not(answer: nil) }
  scope :unanswered, -> { where(answer: nil) }
  scope :first_question_sort, -> { order(created_at: :desc) }
end