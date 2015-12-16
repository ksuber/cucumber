Feature: Navigate to Zappos
  In order to buy shoes
  As a customer
  I got to zappos.com

#sequence of steps that describe what you want to acheive
Scenario: Visiting Zappos.com
  Given I am at Zappos.com
  When I select Shop Men's Boots
  Then I check Under Armour
  Then I click Under Armour UA GGlenrock Mid
  Then I click Add to Cart
  Then I should see Please select a size and Please select a width
  Then I click Don't see your size?
  Then I fill in email, color, size, width fields in the popup
  Then select Notify Me