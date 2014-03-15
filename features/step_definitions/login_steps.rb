Given(/^I go to the Momentum home page$/) do
  visit '/'
  find('//div[@id="container"]/h2', :text => 'Sign in')
end

When(/^I click on the sign up link$/) do
  click_link 'Sign up'
end

When(/^I type "(.*?)" as my email address$/) do |email|
  fill_in 'user[email]', :with => email
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
  find('//h1', :text => 'IPC Hackathon Momentum App')
end

Given(/^I have an account on Momentum$/) do
  visit '/'
  find('//div[@id="container"]/h2', :text => 'Sign in')
end

When(/^I login with my credentials$/) do
  fill_in 'user[email]', :with => 'dsilva@ipcoop.com'
  fill_in 'user[password]', :with => 'password'
  click_button 'Sign in'
end

Then(/^I should be logged into the system$/) do
  find('//h1', :text => 'IPC Hackathon Momentum App')
end