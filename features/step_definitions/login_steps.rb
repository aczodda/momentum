Given(/^I have an account on Momentum$/) do
  visit '/'
  find('//div[@id="container"]/h2', :text => 'Sign in')
end

When(/^I login with my credentials$/) do
  fill_in 'user[email]', :with => 'dsilva@ipcoop.com'
  fill_in 'user[password]', :with => 'my-super-secure-password'
  click_button 'Sign in'
end

Then(/^I should be logged into the system$/) do
  pending # express the regexp above with the code you wish you had
end