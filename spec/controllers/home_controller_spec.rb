require 'spec_helper'

describe HomeController do

  describe 'GET #index' do

    it "sets user to authenticated user" do
      user = User.new
      controller.stub(:authenticate_user!)
      controller.stub(:current_user).and_return(user)
      get :index
      expect(assigns(:user)).to eq(user)
    end

    it 'gets index without feedback' do
      user = create(:user, :first_name => 'Peter', :last_name => 'Pan', :password => 'Tester1!')
      sign_in :user, user
      res = get :index
      assert_response :success
      assert_not_nil assigns(:praises)
      assert assigns['user'] == user
      assert assigns['praises'].size == 0  
    end

  end
  
end
