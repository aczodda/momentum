Given(/^I’m browsing the feedback feed$/) do
  visit('/users/sign_in')
  fill_in('user_email', :with => 'minnie@disney.com')
  fill_in('user_password', :with => 'password')
  click_button('Sign in')
  find('//h3', :text => 'Minnie Mouse')
end

Given(/^I see a bit of praise that I agree with$/) do
  visit('/all_feedback')
  find('//p', :text => 'Great job!')
  find('//small', :text => 'Donald Duck to Daisy Duck')
end

When(/^I click on the “agree” link for that praise$/) do
  click_link('Agree?')
end

Then(/^I should see my agreement reflected on the page$/) do
  find('//small', :text => 'Minnie Mouse agrees with this feedback')
end