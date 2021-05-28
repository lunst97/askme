class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_many :hashtag_questions, dependent: :destroy
  has_many :hashtags, through: :hashtag_questions

  validates :text, presence: true
  validates :text, length: { maximum: 255 }

  after_save_commit :add_hashtags, on: %i[create update]

  scope :answered, -> { where.not(answer: nil) }
  scope :unanswered, -> { where(answer: nil) }
  scope :by_recent, -> { order(created_at: :desc) }

  def add_hashtags
    question = "#{text} #{answer}".downcase
    all_hashtags = question.scan(/#[[:word:]-]+/).uniq
    array_hashtags = all_hashtags.map do |h|
      Hashtag.find_or_create_by(name: h)
    end
    self.hashtags = array_hashtags
  end
end