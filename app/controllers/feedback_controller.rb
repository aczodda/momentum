class FeedbackController < ApplicationController

  before_filter :authenticate_user!

  def index
  	@feedbacks = Feedback.all.reverse
  end

  def create
    @message = params[:message]
  end
end
