Given(/^I am on the game page$/) do
	visit '/new_game'	
end

Then(/^I should select the form field corresponding to the image$/) do
	choose("rock")
end

Then(/^I should click on the 321GO button$/) do 
    click_button("Go!")
end

Then(/^I should see the result of the Game$/) do
	visit '/result'
end

When(/^I select the rock form field$/) do
	choose("rock")
end