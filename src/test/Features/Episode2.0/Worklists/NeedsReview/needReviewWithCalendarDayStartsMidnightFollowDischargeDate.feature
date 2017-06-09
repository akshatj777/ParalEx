Feature: Patient status in Need Review Worklist

  Scenario Outline: Patient status with the 7 calendar days starts at midnight following the discharge date
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
    And I wait for 35000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the discharge date on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the centre of the calendar header to select discharge date and month on Transition Page
    Then I click on the previous next link to select the required year "7" on date picker
    Then I wait for 5000 milli seconds
    Then I select the month "7" from calendar from date picker on Discharge
    Then I wait for 5000 milli seconds
    Then I select the "7" from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I select the midnight time from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "9" on date picker
    Then I select the month "9" from calendar from date picker 
    Then I select the "9" from the calendar from date picker on Transition Page
    Then I select the "9" time from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I wait for 8000 milli seconds
   
    Then I click on the Create Transition Button to add a new transition
    And I wait for 15000 milli seconds
    
    When I switch to default window from iframe
    Then I close the patient summary Page
    And I wait for 5000 milli seconds
    Then I click on the Impatient tab on the patient Card Page
    Then I wait for 5000 milli seconds
    Then I click on the Needs Review tab on the patient Card Page
    Then I wait for 10000 milli seconds
    Then I enter "<Patient Last Name>" in the search box on the admission tab on patients page
    Then I wait for 10000 milli seconds
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page
    Then I click on the ALL Tab on Patient page
    And I wait for 8000 milli seconds
    Then I enter "<Patient Last Name>" in the search box on the admission tab on patients page
    And I wait for 10000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 30000 milli seconds
    Then I click on the Transitions tab on the Patient Summary Page
    And I wait for 25000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on the edit button on the "1" transition to edit the Active transition
    Then I wait for 8000 milli seconds
    Then I click on datepicker button to select the discharge date on add a new transition
    Then I click on the centre of the calendar header to select discharge date and month on Transition Page
    Then I click on the previous next link to select the required year "8" on date picker
    Then I select the month "8" from calendar from date picker
    Then I select the "8" from the calendar from date picker on Transition Page
    Then I select the before midinight time from the calendar from datepicker on Transition Page
    And I wait for 5000 milli seconds
    Then I click on update transition to add a new episode
    And I wait for 10000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    And I wait for 5000 milli seconds
    Then I click on the Impatient tab on the patient Card Page
    Then I wait for 5000 milli seconds
    Then I click on the Needs Review tab on the patient Card Page
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
      | email                | password  | Patient First Name | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | TESTAUTOMATEUSER  |