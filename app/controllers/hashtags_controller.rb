class HashtagsController < ApplicationController
  # GET /hashtags/1
  def show
    @hashtag = Hashtag.find_by!(name: params[:id])
    @question_hashtag = @hashtag.questions
  end
end
