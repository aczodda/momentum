require 'spec_helper'

describe FeedbackController do

  before(:each) do
    @mock_user = User.new
    controller.stub(:current_user).and_return(@mock_user)
    controller.stub(:authenticate_user!)
  end

  describe 'get feedback' do

    it 'gets feedback in reverse chronological order' do
      feedbacks = []
      
      f1 = Feedback.new
      f1.created_at = Date.new(2014,2,3)
      feedbacks << f1

      f2 = Feedback.new
      f2.created_at = Date.new(2014,2,4)
      feedbacks << f2

      f3 = Feedback.new
      f3.created_at = Date.new(2014,2,5)
      feedbacks << f3
      
      Feedback.stub(:all).and_return(feedbacks)

      get :index

      expect(assigns(:feedbacks)).to eq(feedbacks.reverse)
    end

  end

end
