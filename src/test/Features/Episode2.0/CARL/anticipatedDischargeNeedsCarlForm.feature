Feature: To verify the options and functionality of Anticipated Discharge Needs section of Carl form

  Scenario: To verify the Anticicpated section of the Carl Form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    And I wait for 15000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 2000 milli seconds
    And I verify the "Anticipated Discharge Needs" section of the carl form upon clicking on it
    Then I verify that "Anticipated Discharge Needs" section on carl form should be highlighted in left navigator upon clicking
    Then I verify "Therapies Needed" should appear on Anticipated Discharge Needs section
    Then I verify "Physical therapy" checkbox appears under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "Speech and language" checkbox appears under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "Occupational therapyPhysical therapy" checkbox appears under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "None" checkbox appears under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "Transition of Care Needs" should appear on Anticipated Discharge Needs section
    Then I verify "Injetctable Meds" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Blood Testing" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Finger Stick" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Wound Care" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Ostomy" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Tracheostomy" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Catheter" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Tube feeding" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Oxygen" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "CPAP" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "BIPAP" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "New disease process or diagnosis" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "New discharge medication" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I Verify that Carl form should appear with Save & Go Back link
    Then I Verify that Carl form should appear with Save & Continue link

  Scenario: To Select the options present under Therapies Needed on the Anticicpated section of the Carl Form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    And I wait for 15000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 4000 milli seconds
    Then I click "Physical therapy" checkbox under Therapies Needed on Anticipated Discharge Needs section
    And I wait for 3000 milli seconds
    Then I verify "Physical therapy" checkbox is clickable
    Then I verify "Speech and language" checkbox is clickable
    Then I verify "Occupational therapy" checkbox is clickable
    Then I verify "None" checkbox is not clickable
    Then I click "Physical therapy" checkbox under Therapies Needed on Anticipated Discharge Needs section
    And I wait for 3000 milli seconds
    Then I click "None" checkbox under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "Physical therapy" checkbox is not clickable
    Then I verify "Speech and language" checkbox is not clickable
    Then I verify "Occupational therapy" checkbox is not clickable
    Then I click "None" checkbox under Therapies Needed on Anticipated Discharge Needs section

  Scenario: To verify upon selcting Physical Therapy user should be able to select a response for Patients Restoration Potential
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    And I wait for 15000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 4000 milli seconds
    Then I click "Physical therapy" checkbox under Therapies Needed on Anticipated Discharge Needs section
    And I wait for 1000 milli seconds
    Then I verify Patients Restoration Potential section on selecting PhysicalTherapy
    Then I click on Physical Therapy dropdown on Patients Restoration Potential
    And I wait for 3000 milli seconds
    Then I verify "Select" text in place holder of Physical Therapy dropdown on Patients Restoration Potential
    And I wait for 3000 milli seconds
    Then I verify "Good restoration potential" option in Physical Therapy dropdown on Anticipated Discharge Needs
    Then I verify "Questionable restoration potential" option in Physical Therapy dropdown on Anticipated Discharge Needs
    Then I verify "Poor restoration potentia" option in Physical Therapy dropdown on Anticipated Discharge Needs
    Then I select "Good restoration potential" in Physical Therapy dropdown on Anticipated Discharge Needs
    Then I verify "Good restoration potential" is selected in Physical Therapy place holder on Anticipated Discharge Needs
    And I wait for 2000 milli seconds

  Scenario Outline: To verify the options present under Transition of Care Needs on the Anticicpated section of the Carl Form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    And I wait for 15000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 2000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 2000 milli seconds
    Then I select "<Check>" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    And I wait for 1000 milli seconds
    Then I verify upon select "<Check>" checkbox sub field section appears for Transition of Care Needs
    Then I verify on selecting "<Check>" requierd field "<Label>" appears for Transition of Care Needs
    Then I verify "<Radio1>" radio option appears under "<Check>" for Transition Care Needs
    And I wait for 1000 milli seconds
    Then I verify "<Radio2>" radio option appears under "<Check>" for Transition Care Needs
    And I wait for 1000 milli seconds
    Then I click "<Radio1>" radio option under "<Check>" for Transition Care Needs
    And I wait for 1000 milli seconds
    Then I verify "<Radio1>" radio option is checked under "<Check>" for Transition Care Needs
    Then I click "<Radio2>" radio option under "<Check>" for Transition Care Needs
    And I wait for 1000 milli seconds
    Then I verify "<Radio2>" radio option is checked under "<Check>" for Transition Care Needs
    Then I verify "<Radio1>" radio option is not checked under "<Check>" for Transition Care Needs
    Then I uncheck "<Check>" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I verify on uncheck "<Check>" checkbox subbar with options disaapear On Anticipated Discharge Needs
    Then I select "<Check>" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I verify "<Radio1>" radio is set to default on selecting "<Check>" checkbox on Anticipated Discharge Needs
    Then I verify "<Radio2>" radio is set to default on selecting "<Check>" checkbox on Anticipated Discharge Needs

    Examples: 
      | Check                            | Label                  | Radio1                   | Radio2               |
      | Injectable Meds                  | How often?             | Once daily or less often | More than once daily |
      | Blood Testing                    | How often?             | Once daily or less often | More than once daily |
      | Finger Stick                     | How often?             | Once daily               | More than once daily |
      | Ostomy                           | Is it New or existing? | New                      | Existing             |
      | Tracheostomy                     | Is it New or existing? | New                      | Existing             |
      | Catheter                         | Is it New or existing? | New                      | Existing             |
      | Oxygen                           | Is it New or existing? | New                      | Existing             |
      | CPAP                             | Is it New or existing? | New                      | Existing             |
      | BIPAP                            | Is it New or existing? | New                      | Existing             |
      | New disease process or diagnosis | How Many?              | One                      | More than one        |
      | New discharge medication         | How Many?              | One                      | More than one        |

  Scenario Outline: To verify the multiple options and labels present under checkbox  for Transition of Care Needs on the Anticicpated section of the Carl Form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    And I wait for 15000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 2000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 2000 milli seconds
    Then I select "<Check>" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    And I wait for 1000 milli seconds
    Then I verify upon select "<Check>" checkbox sub field section appears for Transition of Care Needs
    Then I verify on selecting "<Check>" requierd field "<Label1>" appears for Transition of Care Needs
    Then I verify "<Radio11>" radio option appears under "<Check>" for Transition Care Needs
    And I wait for 1000 milli seconds
    Then I verify "<Radio12>" radio option appears under "<Check>" for Transition Care Needs
    And I wait for 1000 milli seconds
    Then I click "<Radio11>" radio option under "<Check>" for Transition Care Needs
    And I wait for 1000 milli seconds
    Then I verify "<Radio11>" radio option is checked under "<Check>" for Transition Care Needs
    Then I click "<Radio12>" radio option under "<Check>" for Transition Care Needs
    And I wait for 1000 milli seconds
    Then I verify "<Radio12>" radio option is checked under "<Check>" for Transition Care Needs
    Then I verify "<Radio11>" radio option is not checked under "<Check>" for Transition Care Needs
    Then I verify on selecting "<Check>" requierd field "<Label2>" appears for Transition of Care Needs
    Then I click "<Radio21>" radio option under "<Check>" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "<Radio21>" radio option is checked under "<Check>" for Transition Care Needs
    Then I click "<Radio22>" radio option under "<Check>" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "<Radio22>" radio option is checked under "<Check>" for Transition Care Needs
    Then I verify "<Radio21>" radio option is not checked under "<Check>" for Transition Care Needs
    Then I uncheck "<Check>" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I verify on uncheck "<Check>" checkbox subbar with options disaapear On Anticipated Discharge Needs
    Then I select "<Check>" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I verify "<Radio11>" radio is set to default on selecting "<Check>" checkbox on Anticipated Discharge Needs
    Then I verify "<Radio12>" radio is set to default on selecting "<Check>" checkbox on Anticipated Discharge Needs
    Then I verify "<Radio21>" radio is set to default on selecting "<Check>" checkbox on Anticipated Discharge Needs
    Then I verify "<Radio22>" radio is set to default on selecting "<Check>" checkbox on Anticipated Discharge Needs

    Examples: 
      | Check        | Label1     | Radio11                     | Radio12                      | Label2                 | Radio21 | Radio22  |
      | Wound Care   | How often? | Once daily or less often    | More than once daily         | Is it New or existing? | New     | Existing |
      | Tube Feeding | What kind? | Partial nutritional support | Complete nutritional support | Is it New or existing? | New     | Existing |
