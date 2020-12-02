And /^I clear session/ do
  Capybara.current_session.driver.quit
end

When /^I go to the "(.*)" page/ do |place|
  visit place
end

When /^I fill in "(.*)" with "(.*)"/ do |field, value|
  page.find(:xpath, ".//input[@name='#{field}']").set value
end

And /^I click button "(.*)"/ do |button_name|
  click_button button_name
end

Then /^I should see "(.*)"/ do |string|
  expect(page).to have_content(string)
end