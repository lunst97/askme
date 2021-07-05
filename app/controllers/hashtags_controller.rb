class HashtagsController < ApplicationController
  # GET /hashtags/1
  rescue_from ActiveRecord::RecordNotFound, with: :have_not_hashtag
  def show
    @hashtag = Hashtag.only_have_question.find_by!(name: params[:name])
    @hashtag_questions = @hashtag.questions
  end

  private

  def have_not_hashtag
    redirect_to root_path, alert: "Нету вопросов с таким хештегом!"
  end
end
