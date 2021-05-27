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
    all_hashtags.each do |h|
      hashtag = Hashtag.find_or_create_by(name: h)
      self.hashtags = [hashtag]
    end
    # self.hashtags = all_hashtags
  end
  #   if answer_question.present?
    #     Hashtag.create(name: answer_question)
    #     HashtagQuestion.create(hashtag_id: Question.last.id, question_id: Question.last.id)
    #   end
    #   text_question = text.scan(/#[[:word:]-]+/)
    #   if text_question.present?
    #     Hashtag.create(name: text_question)
    #     HashtagQuestion.create(hashtag_id: Hashtag.last.id, question_id: Question.last.id)
    #   end
    # else
    #   text_question = text.scan(/#[[:word:]-]+/)
    #   if text_question.present?
    #     Hashtag.create(name: text_question)
    #     HashtagQuestion.create(hashtag_id: Hashtag.last.id, question_id: Question.last.id)
    #   end
    # end
    # text = Question.last.text.scan(/#[[:word:]-]+/)
    # answer = Question.last.answer.scan(/#[[:word:]-]+/)
    # Hashtag.create(name: text)
    # Hashtag.create(name: answer)
    # HashtagQuestion.create(hashtag_id: text.id, question_id: Question.last.id)
    # HashtagQuestion.create(hashtag_id: answer.id, question_id: Question.last.id)
end