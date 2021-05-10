class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_many :hashtags, through: :hashtag_questions
  has_many :hashtag_questions, dependent: :destroy

  validates :text, presence: true
  validates :text, length: { maximum: 255 }

  after_commit :find_hashtags, on: [:create, :update]

  scope :answered, -> { where.not(answer: nil) }
  scope :unanswered, -> { where(answer: nil) }
  scope :by_recent, -> { order(created_at: :desc) }

  def find_hashtags
    text.to_s.scan(/#[[:word:]-]+/)
  end

end