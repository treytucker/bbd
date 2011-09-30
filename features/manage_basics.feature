Feature: Manage basics
  In order to view the basic pages
  As a guest
  I want to be able to see privacy policy, terms of service, and about us.
  
  Scenario: Viewing privacy policy
   Given I am on root page
   And I am a guest
   When I follow "Privacy Policy"
   Then I should see "Privacy Policy" as the header

  # Scenario: Viewing Terms of Service
  #  Given root page
  #  And I am a guest
  #  When I follow "Terms of Service"
  #  Then I should see "Terms of Service" as the header
  # 
  # Scenario: Viewing About us
  #  Given root page
  #  And I am a guest
  #  When I follow "About Us"
  #  Then I should see "About Us" as the header
    