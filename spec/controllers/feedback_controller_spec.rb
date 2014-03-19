require 'spec_helper'

describe FeedbackController do

  before(:each) do
    @mock_user = User.new
    controller.stub(:current_user).and_return(@mock_user)
    controller.stub(:authenticate_user!)
  end

  describe 'get feedback' do

    it 'gets feedback in reverse chronological order' do
      u1 = create :user, first_name: 'Mickey', last_name: 'Mouse', email: 'mickey@disney.com'
      u2 = create :user, first_name: 'Minnie', last_name: 'Mouse', email: 'minnie@disney.com'
      f1 = create :feedback, this_many_days_ago: 5, user: u1, author: u2
      f2 = create :feedback, this_many_days_ago: 4, user: u1, author: u2
      f3 = create :feedback, this_many_days_ago: 3, user: u1, author: u2
      feedbacks = [f1,f2,f3]

      get :index

      expect(assigns(:feedbacks)).to eq(feedbacks.reverse)
    end

  end

end
