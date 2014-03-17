class FeedbackController < ApplicationController
  def index
  	@feedbacks = Feedback.all
  end

  def create
    @message = params[:message]
  end
end
