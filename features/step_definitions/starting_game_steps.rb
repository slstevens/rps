Given(/^I am on the homepage$/) do
	visit '/'	
end

Then(/^I should see "(.*?)"$/) do |text|
	expect(page).to have_content(text)
end

Then(/^I should fill in the "(.*?)" field with "(.*?)"$/) do |field, value|
	fill_in field, :with => value
end

Then(/^I should click on "(.*?)"$/) do |text|
    click_button(text)
end