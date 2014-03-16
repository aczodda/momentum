class HomeController < ApplicationController

  before_filter :authenticate_user!

  def index
    @user = current_user
    @users = User.all.find_all { |u| u != current_user }
  end

  def add_feedback
    flash[:error] = "Message cannot be blank." if params[:message].first.blank?

    user = User.find(params[:user_id])
    message = params[:message].first.strip

    feedback = Feedback.new(message: message, author: current_user, user: user)

    flash[:success] = "Left feedback for #{user.full_name}!" if feedback.save

    redirect_to action: :index
  end

end
