Feature: User only see reports tiles based on their role for multiple payer users for ACH MODEL 2 facility

  Scenario Outline: For ACH MODEL 2 RPFIN, RPNOFIN reports link verification for the multiple payer users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Overall Program" under reports tile text
    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims)           |
      | Financial Performance (Claims) |
      | Spending (Claims)              |
    When I click on "Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Performance" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Financial Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Financial Performance" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Spending (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Spending" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Patient ID reports
      | Episode DRG Issues         |
      | Inpatient Episode Clearing |
    When I click on "Episode DRG Issues" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Episode DRG Issues" in the Episode DRG Issues Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "InPatient Episode Clearing" in the Inpatient Episode Clearing Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Summary |
      | SNF Performance (Claims)           |
      | SNF Volume (Claims)                |
      | Post Acute Care (Claims)           |
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "SNF Performance (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF Performance" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "SNF Volume (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF Volume" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Post Acute Care (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Post Acute Care" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Physician" under reports tile text
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Physician reports
      | Performance (Claims) |
      | Volume (Claims)      |
      | Spending (Claims)    |
    When I click on "Performance (Claims)" reports text for "Physician" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Physician Performance" in the Physician Performance Physician report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Volume (Claims)" reports text for "Physician" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Volume" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Physician Volume" in the Physician Volume Physician report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Spending (Claims)" reports text for "Physician" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Spending" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Physician Spending" in the Physician Spending Physician report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for NSoC reports
      | CARL                      |
      | Next Site of Care Summary |
    When I click on "CARL" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "CARL" in the CARL NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Next Site of Care Summary" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    And I should see Reports Tile text as <Menu 7>
    When I click on the Reports Tile with text "<Menu 7>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "<Menu 7>"
    When I click on "Readmissions (Claims)" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions Claims" in the Readmissions Claims Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title

    Examples: 
      | email                            | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5    | Menu 6            | Menu 7       |
      | multipayerachrpfin@yopmail.com   | Dashboards | Overall Program | Patient ID | Post Acute Care | Physician | Next Site of Care | Readmissions |
      | multipayerachrpnofin@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Physician | Next Site of Care | Readmissions |

  Scenario Outline: For ACH MODEL 2 OPSFIN reports link verification for the multiple payer users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Overall Program" under reports tile text
    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims)           |
      | Financial Performance (Claims) |
      | Spending (Claims)              |
    When I click on "Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Performance" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Financial Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Financial Performance" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Spending (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Spending" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Patient ID reports
      | Episode DRG Issues         |
      | Inpatient Episode Clearing |
    When I click on "Episode DRG Issues" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Episode DRG Issues" in the Episode DRG Issues Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "InPatient Episode Clearing" in the Inpatient Episode Clearing Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Summary |
      | SNF Performance (Claims)           |
      | Post Acute Care (Claims)           |
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "SNF Performance (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF Performance" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Post Acute Care (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Post Acute Care" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for NSoC reports
      | CARL                      |
      | Next Site of Care Summary |
    When I click on "CARL" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "CARL" in the CARL NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Next Site of Care Summary" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Readmissions (Claims)" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions Claims" in the Readmissions Claims Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title

    Examples: 
      | email                           | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5            | Menu 6       |
      | multipayerachopsfin@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Next Site of Care | Readmissions |

  Scenario Outline: For ACH MODEL 2 OPSNOFIN reports link verification for the multiple payer users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Overall Program" under reports tile text
    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims) |
    When I click on "Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Performance" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Patient ID reports
      | Episode DRG Issues         |
      | Inpatient Episode Clearing |
    When I click on "Episode DRG Issues" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Episode DRG Issues" in the Episode DRG Issues Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "InPatient Episode Clearing" in the Inpatient Episode Clearing Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Summary |
      | SNF Performance (Claims)           |
      | Post Acute Care (Claims)           |
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "SNF Performance (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF Performance" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Post Acute Care (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Post Acute Care" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for NSoC reports
      | CARL                      |
      | Next Site of Care Summary |
    When I click on "CARL" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "CARL" in the CARL NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Next Site of Care Summary" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Readmissions (Claims)" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions (Claims)" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions Claims" in the Readmissions Claims Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title

    Examples: 
      | email                            | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5            | Menu 6       |
      | multipayeachopsnofin@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Next Site of Care | Readmissions |

  Scenario Outline: For ACH MODEL 2 OPSSPEND reports link verification for the multiple payer users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Overall Program" under reports tile text
    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims) |
      | Spending (Claims)    |
    When I click on "Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Performance" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Spending (Claims)" reports text for "Overall Program" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Spending" in the Performance Overall Program report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Patient ID reports
      | Episode DRG Issues         |
      | Inpatient Episode Clearing |
    When I click on "Episode DRG Issues" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Episode DRG Issues" in the Episode DRG Issues Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "InPatient Episode Clearing" in the Inpatient Episode Clearing Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Summary |
      | SNF Performance (Claims)           |
      | Post Acute Care (Claims)           |
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "SNF Performance (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF Performance" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Post Acute Care (Claims)" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Post Acute Care" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for NSoC reports
      | CARL                      |
      | Next Site of Care Summary |
    When I click on "CARL" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "CARL" in the CARL NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Next Site of Care Summary" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Readmissions (Claims)" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions Claims" in the Readmissions Claims Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title

    Examples: 
      | email                             | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5            | Menu 6       |
      | multipayerachopsspend@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Next Site of Care | Readmissions |

  Scenario Outline: For ACH MODEL 2 ECREPORTS reports link verification for the multiple payer users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    Then I verify current page "Reports" title
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Patient ID reports
      | Episode DRG Issues         |
      | Inpatient Episode Clearing |
    When I click on "Episode DRG Issues" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Episode DRG Issues" in the Episode DRG Issues Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "InPatient Episode Clearing" in the Inpatient Episode Clearing Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text
    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Summary |
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for NSoC reports
      | CARL                      |
      | Next Site of Care Summary |
    When I click on "CARL" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "CARL" in the CARL NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Next Site of Care Summary" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions |
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text

    Examples: 
      | email                              | Menu 1     | Menu 2     | Menu 3          | Menu 4            | Menu 5       |
      | multipayerachecreports@yopmail.com | Dashboards | Patient ID | Post Acute Care | Next Site of Care | Readmissions |
