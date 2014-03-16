class FeedbackController < ApplicationController
  def create
    @message = params[:message]
  end
end
