class HashtagsController < ApplicationController
  # GET /hashtags/1
  def show
    @hashtag = Hashtag.find_by!(name: params[:name])
    @hashtag_questions = @hashtag.questions
  end
end
