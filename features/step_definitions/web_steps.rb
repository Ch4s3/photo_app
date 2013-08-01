When(/^I visit (.*?)$/) do |page|
  visit path_to(page)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |element, text|
  fill_in element, with: text
end

When(/^I click "(.*?)"$/) do |element|
  click_on element
end

