Feature: Verification of SNF Volume Claims Reports Filters

  Scenario Outline: User should be click on one of the link under episodes and verify episode list columns
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Volume (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "CCN" is appearing under Episodes table
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "DRG Code" is appearing under Episodes table
    Then I should verify "Beneficiary HIC" is appearing under Episodes table
    Then I should verify "Beneficiary First Name" is appearing under Episodes table
    Then I should verify "Beneficiary Last Name" is appearing under Episodes table
    Then I should verify "Anchor Admission Quarter" is appearing under Episodes table
    Then I should verify "Anchor Begin Date (Key)" is appearing under Episodes table
    Then I should verify "Anchor End Date" is appearing under Episodes table
    Then I should verify "Episode End Date" is appearing under Episodes table
    Then I should verify "Attending Physician NPI" is appearing under Episodes table
    Then I should verify "Attending Physician Name" is appearing under Episodes table
    Then I should verify "Operating Physician NPI" is appearing under Episodes table
    Then I should verify "Operating Physician Name" is appearing under Episodes table
    Then I should verify "Attributed Physician NPI" is appearing under Episodes table
    Then I should verify "Attributed Physician" is appearing under Episodes table
    Then I should verify "Post Acute CCN" is appearing under Episodes table
    Then I should verify "Post Acute Facility" is appearing under Episodes table
    Then I should verify "Post Acute Category" is appearing under Episodes table
    Then I should verify "Post Acute Type" is appearing under Episodes table
    Then I should verify "Readmission CCN 1" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 1" is appearing under Episodes table
    Then I should verify "Readmission DRG 1" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 1" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 1" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 1" is appearing under Episodes table
    Then I should verify "Readmission CCN 2" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 2" is appearing under Episodes table
    Then I should verify "Readmission DRG 2" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 2" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 2" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 2" is appearing under Episodes table
    Then I should verify "Readmission CCN 3" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 3" is appearing under Episodes table
    Then I should verify "Readmission DRG 3" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 3" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 3" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 3" is appearing under Episodes table
    Then I should verify "Readmission CCN 4" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 4" is appearing under Episodes table
    Then I should verify "Readmission DRG 4" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 4" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 4" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 4" is appearing under Episodes table
    Then I should verify "Readmission CCN 5" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 5" is appearing under Episodes table
    Then I should verify "Readmission DRG 5" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 5" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 5" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 5" is appearing under Episodes table
    Then I should verify "Readmission Count" is appearing under Episodes table

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: User should remove the existing default filters
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Volume (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
    When I click on show all filters icon button
    Then I remove "Post Acute Category" field filter under "Post Acute Category.Post Acute Type" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters

    Examples: 
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Emblem Payer Users            |
      | emblemachrpfin@yopmail.com     |
      #| Multiple Payer Users          |
      | multipayerachrpfin@yopmail.com |
