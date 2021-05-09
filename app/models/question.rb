class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_many :hashtag, through: :hashtag_question
  has_many :hashtag_question, dependent: :destroy

  validates :text, presence: true
  validates :text, length: { maximum: 255 }

  before_save :find_hashtags

  scope :answered, -> { where.not(answer: nil) }
  scope :unanswered, -> { where(answer: nil) }
  scope :by_recent, -> { order(created_at: :desc) }

  private

  def find_hashtags
    text.to_s.scan(/#[[:word:]-]+/)
  end

end