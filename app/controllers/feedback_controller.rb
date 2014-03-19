class FeedbackController < ApplicationController

  before_filter :authenticate_user!

  def index
  	@feedbacks = Feedback.order(created_at: :desc)
  end

  def create
    @message = params[:message]
  end
end
