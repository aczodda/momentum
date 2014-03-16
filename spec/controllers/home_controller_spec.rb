require 'spec_helper'

describe HomeController do

  describe "GET #index without feedback" do 
    it "sets user to authenticated user" do
      mock_user = User.new
      mock_users = []

      User.stub(:all).and_return(mock_users)
      controller.stub(:authenticate_user!)
      controller.stub(:current_user).and_return(mock_user)

      get :index

      expect(assigns(:user)).to eq(mock_user)
      expect(assigns(:users)).to eq(mock_users)
    end
  end
end
