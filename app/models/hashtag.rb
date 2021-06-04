class Hashtag < ApplicationRecord

  has_many :hashtag_questions, dependent: :destroy
  has_many :questions, through: :hashtag_questions

  scope :only_have_question, -> { joins(:questions).distinct }
end
