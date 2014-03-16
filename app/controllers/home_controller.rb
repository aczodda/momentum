class HomeController < ApplicationController

  before_filter :authenticate_user!

  def index
    @user = current_user
    @praises = []
  end

  def feed
  end

end
