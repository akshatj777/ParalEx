Feature: Episode List Verification Under Episode DRG Issues Reports

Scenario Outline: User should be able to see Episodes List under Episode DRG Issues Report After clicking on any Episode number link

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for 50000 milli seconds
    
    When I switch to reports embedded iframe
    Then I click on a number under episodes column
    And I wait for 5000 milli seconds
    Then I switch to new window
    And I wait for 3000 milli seconds
    
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "Medicare ID" is appearing under Episodes table
    Then I should verify "Eligibility" is appearing under Episodes table
    Then I should verify "Patient" is appearing under Episodes table
    Then I should verify "DOB" is appearing under Episodes table
    Then I should verify "Episode Status" is appearing under Episodes table
    Then I should verify "Anchor Begin Date" is appearing under Episodes table
    Then I should verify "Anchor Discharge Date" is appearing under Episodes table
    Then I should verify "CCN" is appearing under Episodes table
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Setting" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Setting Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type Detail (EC)" is appearing under Episodes table
    Then I should verify "First Predicted DRG" is appearing under Episodes table
    Then I should verify "First Predicted Bundle" is appearing under Episodes table
    Then I should verify "First Predicted DRG Date" is appearing under Episodes table
    Then I should verify "First Working DRG" is appearing under Episodes table
    Then I should verify "First Working Bundle" is appearing under Episodes table
    Then I should verify "First Working DRG Date" is appearing under Episodes table
    Then I should verify "First Final DRG" is appearing under Episodes table
    Then I should verify "First Final Bundle" is appearing under Episodes table
    Then I should verify "First Final DRG Date" is appearing under Episodes table
    Then I should verify "Last Predicted DRG" is appearing under Episodes table
    Then I should verify "Last Predicted DRG Date" is appearing under Episodes table
    Then I should verify "Last Working DRG" is appearing under Episodes table
    Then I should verify "Last Working Bundle" is appearing under Episodes table
    Then I should verify "Last Working DRG Date" is appearing under Episodes table
    Then I should verify "Last Final DRG" is appearing under Episodes table
    Then I should verify "Last Final Bundle" is appearing under Episodes table
    Then I should verify "Last Final DRG Date" is appearing under Episodes table
    Then I should verify "Issue" is appearing under Episodes table
    
    
    Examples:
    
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |