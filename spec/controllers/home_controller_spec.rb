require 'spec_helper'

describe HomeController do

  describe "GET #index without feedback" do 
    it "sets user to authenticated user" do
      @user = User.new
      controller.stub(:authenticate_user!)
      controller.stub(:current_user).and_return(@user)

      get :index

      expect(assigns(:user)).to eq(@user)
    end
  end
end
