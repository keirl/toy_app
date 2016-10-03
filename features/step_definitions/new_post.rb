Given(/^user is on the new micropost page$/) do
  visit('microposts/new')  
end

When(/^I add new content (.*)$/) do |content|
  fill_in('micropost_content', :with => content)
  @micro_content = content
end

When(/^I select user id (\d+)$/) do |arg1|
  fill_in('micropost_user_id', :with => arg1)
  @user_id = arg1
end

When(/^I click on Create Micropost$/) do
  click_on('Create Micropost')
end

Then(/^micropost was successfully created$/) do
  page.should have_content 'Micropost was successfully created.'
  page.should have_content @micro_content
  page.should have_content @user_id
end
