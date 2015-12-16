Given(/^I am at Zappos\.com$/) do
  visit "http://www.zappos.com" 
end

When(/^I select Shop Men's Boots$/) do
  click_link("Shop Men's")
  click_link("Boots") 
end

Then(/^I check Under Armour$/) do
  click_link("Under Armour")  
end

Then(/^I click Under Armour UA GGlenrock Mid$/) do
  find(".style-3266091").click
end

Then(/^I click Add to Cart$/) do
  click_button("addToCart")
end

Then(/^I should see Please select a size and Please select a width$/) do
  page.has_content?('Please select a size')
end

Then(/^I click Don't see your size\?$/) do
  click_link("Don't see your size?")
end

Then(/^I fill in email, color, size, width fields in the popup$/) do
  popup = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.window(popup)

    fill_in("email", with: "AviLichtschein@gmail.com")
    select('Cadet/Pirate Blue/Stoneleigh Taupe', from: 'styleId')
    select('11', from: 'dimensionValueIds')  

end


Then(/^select Notify Me$/) do
  click_button("Notify Me!")
end


