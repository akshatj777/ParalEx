Feature: Patient status on Home Limited Service Worklist

  Scenario Outline: Patient's with past transition admit/discharge care setting is HOM / REH (Outpatient)
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 10000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    Then I enter "<Patient Last Name>" in the search box on the patients page
    And I wait for 30000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "20" on date picker
    Then I select the month "20" from calendar from date picker
    Then I select the "20" from the calendar from date picker on Transition Page
    Then I select the "20" time from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I wait for 8000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 15000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name       |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | TESTHOMELIMITEDSERVICES |

  Scenario Outline: Patient's with past transition admit/discharge care setting is HOM / REH (Outpatient)
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 10000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    Then I enter "<Patient Last Name>" in the search box on the patients page
    And I wait for 30000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 30000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "20" on date picker
    Then I select the month "23" from calendar from date picker
    Then I select the "23" from the calendar from date picker on Transition Page
    Then I select the "23" time from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I select the care setting value "HOM - Home" on add a new transition
    Then I wait for 4000 milli seconds
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I wait for 4000 milli seconds
    Then I select the Discharge care setting value "REH - Rehabilitation" on add a new transition
    Then I wait for 4000 milli seconds
    Then I select the Discharge care type value "Inpatient" on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 15000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I reload my page
    And I wait for 2000 milli seconds
    Then I click on the Post Acute tab on the patient Card Page
    Then I wait for 5000 milli seconds
    Then I click on Home with Limited Services sub tab on the patient Card Page
    Then I wait for 10000 milli seconds
    Then I enter "<Patient Last Name>" in the search box on the admission tab on patients page
    Then I wait for 10000 milli seconds
    Then I verify the "<Patient Last Name>" patient not present on the Patient Card Page
    Then I click on the ALL Tab on Patient page
    And I wait for 8000 milli seconds
    Then I enter "<Patient Last Name>" in the search box on the admission tab on patients page
    And I wait for 10000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 30000 milli seconds
    Then I click on the Transitions tab on the Patient Summary Page
    And I wait for 25000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on the delete button on the transition to delete all the transitions

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name       |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | TESTHOMELIMITEDSERVICES |
