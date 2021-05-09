class Hashtag < ApplicationRecord
  has_many :hashtag_question, dependent: :destroy
  has_many :question, through: :hashtag_question

end
