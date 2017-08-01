Feature: Episode 2.0 Expand Patient Card  for Patient Summary

  Scenario: verify Expand Patient Card to verify patient summary
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    
    When I click on the "Episodes 2.0" tile
    And I wait for 25000 milli seconds
    Then I verify current page "Remedy Partners" title
    
    When I click on the Expand button on the patient card on the patient page
     Then I Verify Current Location is present on the patient summary page
    Then I Verify Anchor Facility is present on the patient summary page
    Then I Verify Account status is present on the patient summary page
    Then I Verify MRNs is present on the patient summary page
    Then I Verify Onboarding Status is present on the patient summary page
    
    When I Click on Onboarding Status present on the patient summary page
    
    Then I Verify Recalculate is present in the Onboarding Dropdown on the patient summary page
    Then I Verify Low Status is present in the Onboarding Dropdown on the patient summary page
    Then I Verify High Status is present in the Onboarding Dropdown on the patient summary page
    Then I Verify Needs-Onboarding Status in the Onboarding Dropdown on the patient summary page
    Then I Verify Not-Onboarded Status is present in the Onboarding Dropdown on the patient summary page
    
    Then I Verify Eligibility is present on the patient summary page
    
    When I Click on Eligibility present on the patient summary page
     
    Then I Verify Run Service is present in the Eligibility Dropdown on the patient summary page
    Then I Verify Review Service Response is present in the Eligibility Dropdown on the patient summary page
    Then I Verify Reset Payer section is present in the Eligibility Dropdown on the patient summary page
    Then I Verify Not Eligible is present in the Eligibility Dropdown on the patient summary page
    Then I Verify Not Eligible ESRD is present in the Eligibility Dropdown on the patient summary page
    Then I Verify Error is present in the Eligibility Dropdown on the patient summary page
    Then I Verify Expired is present in the Eligibility Dropdown on the patient summary page
    
    Then I Verify Tags is present on the patient summary page
    
    Then I verify "Hide Summary" is appearing in the maximized view on patient summary page
    And I wait for 2000 milli seconds
    When I click on Hide Summary button present on the patient summary page
    
    And I wait for 4000 milli seconds
    
    Then I see firstname is appearing in minimized mode on patient summary page
    Then I see lastname is appearing in minimized mode on patient summary page
    Then I see date of birth is appearing in minimized mode on patient summary page
    Then I see age is appearing in minimized mode on patient summary page
    Then I see gender is appearing in minimized mode on patient summary page
    Then I see ssn is appearing in minimized mode on patient summary page
    Then I see language is appearing in minimized mode on patient summary page
    Then I see risk score is appearing in minimized mode on patient summary page
    
    Then I verify "Show Summary" is appearing in the minimized view on patient summary page
    And I wait for 2000 milli seconds
    Then I verify that only Card header information is displayed on the patient summary page
    