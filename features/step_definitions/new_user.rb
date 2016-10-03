Given(/^user is on the new user page$/) do
  visit('users/new')
end

When(/^I add new user (.*)$/) do |name|
  fill_in('user_name', :with => name)
  @matching_name = name
end

When(/^I add new email (.*)$/) do |email|
  fill_in('user_email', :with => email)
  click_on('Create User')
end


Then(/^user was successfully created$/) do
  page.should have_content 'User was successfully created.'
  page.should have_content @matching_name 
end

