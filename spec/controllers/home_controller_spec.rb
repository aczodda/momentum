require 'spec_helper'

describe HomeController do

  describe 'GET #index' do

    it "sets user to authenticated user" do
      mock_users = []
      mock_user = User.new

      User.stub(:all).and_return(mock_users)
      controller.stub(:authenticate_user!)
      controller.stub(:current_user).and_return(mock_user)

      get :index
      expect(assigns(:user)).to eq(mock_user)
    end

    it 'gets index without feedback' do
      mock_user = User.new
      controller.stub(:authenticate_user!)
      controller.stub(:current_user).and_return(mock_user)
      User.stub(:all).and_return([])

      get :index

      assert_response :success
      expect(assigns(:user)).to eq(mock_user)
      expect(assigns(:users)).to eq([])
    end

  end
  
end
