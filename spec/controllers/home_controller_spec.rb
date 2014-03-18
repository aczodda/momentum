require 'spec_helper'

describe HomeController do

  before(:each) do
    @mock_users = []
    @mock_user = User.new
    User.stub(:all).and_return(@mock_users)
    controller.stub(:current_user).and_return(@mock_user)
    controller.stub(:authenticate_user!)
  end

  describe 'GET #index' do

    it "sets user to authenticated user" do
      get :index
      expect(assigns(:user)).to eq(@mock_user)
    end

    it 'gets index without feedback' do
      get :index
      assert_response :success
      expect(assigns(:user)).to eq(@mock_user)
      expect(assigns(:users)).to eq(@mock_users)
    end

  end

  describe 'POST #add_feedback' do

    before(:each) do
      @feedback = Feedback.new
      @feedback.stub(:save).and_return(true)
      @recepient = User.new
      @recepient.first_name = 'Mickey'
      @recepient.last_name = 'Mouse'
      Feedback.stub(:new).and_return(@feedback)
      User.stub(:find).and_return(@recepient)
    end

    it 'should return error when message is blank' do
      post :add_feedback, :message => ''
      should redirect_to :action => :index
      expect(flash[:error]).to eq('Message cannot be blank.')
    end

    it 'should return success when message and user are set' do
      post :add_feedback, :message => 'you are great!'
      should redirect_to :action => :index
      expect(flash[:success]).to eq('Left feedback for Mickey Mouse!')
    end
    
  end
  
end
