class FeedbackController < ApplicationController

  before_filter :authenticate_user!

  def index
  	@feedbacks = Feedback.order(created_at: :desc)
  end

  def create
    @message = params[:message]
  end

  def add_support
    feedback = Feedback.find(params[:feedback_id])
    user = current_user

    if feedback.supporters.nil?
      feedback.supporters = "#{user.first_name} #{user.last_name}"
    else
      feedback.supporters = "#{feedback.supporters}, #{user.first_name} #{user.last_name}"
    end

    feedback.save

    redirect_to action: :index
  end
end
