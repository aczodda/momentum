Given(/^I go to the Momentum home page$/) do
  visit '/'
end

When(/^I click on the sign up link$/) do
  click_link 'Sign up'
end

When(/^I type "(.*?)" as my email address$/) do |email|
  fill_in 'user[email]', :with => email
end

When(/^I type "(.*?)" as my first name$/) do |first_name|
  fill_in 'user[first_name]', :with => first_name
end

When(/^I type "(.*?)" as my last name$/) do |last_name|
  fill_in 'user[last_name]', :with => last_name
end

When(/^I type "(.*?)" as my password$/) do |password|
  fill_in 'user[password]', :with => password
end

When(/^I type "(.*?)" as my password confirmation$/) do |password|
  fill_in 'user[password_confirmation]', :with => password
end

When(/^I click the sign up button$/) do
  click_button 'Sign up'
end

Then(/^I am redirected to the home page$/) do
  find('//h3', :text => 'Mickey Mouse')
  find('//div[@class="form-group"]/label', :text => 'Send Praise')
  find('//div[@class="form-group"]/textarea[@name="message[]"]')
  click_link 'Logout'
end

When(/^I login with "(.*?)" as my email address$/) do |email|
  fill_in 'user[email]', :with => email
end

When(/^with "(.*?)" as my password$/) do |password|
  fill_in 'user[password]', :with => password
  click_button 'Sign in'
end