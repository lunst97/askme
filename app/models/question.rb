class Question < ApplicationRecord
  REGEXP_HASHTAG = /#[[:word:]-]+/.freeze

  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_many :hashtag_questions, dependent: :destroy
  has_many :hashtags, through: :hashtag_questions

  validates :text, presence: true
  validates :text, length: { maximum: 255 }

  after_save_commit :add_hashtags

  scope :answered, -> { where.not(answer: nil) }
  scope :unanswered, -> { where(answer: nil) }
  scope :by_recent, -> { order(created_at: :desc) }

  private

  def add_hashtags
    "#{text} #{answer}".downcase.scan(REGEXP_HASHTAG).uniq.each do |h|
      hashtags << Hashtag.find_or_create_by(name: h.delete('#'))
    end
  end
end