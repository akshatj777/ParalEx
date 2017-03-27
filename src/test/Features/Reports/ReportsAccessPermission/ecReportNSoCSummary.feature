Feature: Verification of Next Site of Care Summary EC Report

Scenario Outline: User should be able to see Level and Measures on Left Side of NSoc Summary Report

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "NSoC"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports 
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I verify "Model" filter is preselected under the filter
    Then I should see "Model includes 2" is present under preselected model filter
    Then I should see "Dashboard Admission Month is between (and includes) 2016-01 and 2017-12" is present under preselected anchor month filter
    
    When I click on field-panel-icon button
    And I wait for 1000 milli seconds
    When I click on field-layout-icon button
    And I wait for 1000 milli seconds
    
    Then I should see "# Episodes" under "measures" field
    
    Then I should see "1st Post Acute CCN" for Nsoc Summary under "level" field
    Then I should see "1st Post Acute Facility" for Nsoc Summary under "level" field
    Then I should see "1st Post Acute Type" for Nsoc Summary under "level" field
    Then I should see "2nd Post Acute CCN" appearing under "level" field
    Then I should see "2nd Post Acute Facility" appearing under "level" field
    Then I should see "2nd Post Acute Type" appearing under "level" field
    Then I should see "Anchor Discharge Care Type" appearing under "level" field
    Then I should see "Anchor Discharge Facility Category" appearing under "level" field
    Then I should see "Anchor Facility" appearing under "level" field
    Then I should see "Anchor Facility Type" appearing under "level" field
    Then I should see "AtRisk" appearing under "level" field
    Then I should see "BPID" appearing under "level" field
    Then I should see "Bundle" appearing under "level" field
    Then I should see "Bundle Code" appearing under "level" field
    Then I should see "CCN" appearing under "level" field
    Then I should see "DOB" appearing under "level" field
    Then I should see "DRG" appearing under "level" field
    Then I should see "DRG Code" appearing under "level" field
    Then I should see "DataQualityFlag" appearing under "level" field
    Then I should see "Discharge Type" appearing under "level" field
    Then I should see "Eligibility" appearing under "level" field
    Then I should see "Episode Initiator" appearing under "level" field
    Then I should see "MDC" appearing under "level" field
    Then I should see "Medicare ID" appearing under "level" field
    Then I should see "Model" appearing under "level" field
    Then I should see "NPI" appearing under "level" field
    Then I should see "Participant" appearing under "level" field
    Then I should see "Participant ID" appearing under "level" field
    Then I should see "Patient" appearing under "level" field
    Then I should see "Principal Account Practitioner" appearing under "level" field
    Then I should see "Risk Score" appearing under "level" field
    Then I should see "SNF Admit Date" appearing under "level" field
    Then I should see "SNF Disch Date" appearing under "level" field
    Then I should see "SNF Network Tier" appearing under "level" field
    Then I should see "isAnchorAdmission" appearing under "level" field
    Then I should see "isSNFAdmissionReport" appearing under "level" field
    
    Then I should see "Anchor Admission Month" appearing under "Time" field
    Then I should see "Anchor Admission Quarter" appearing under "Time" field
    Then I should see "Anchor Admission Week" appearing under "Time" field
    Then I should see "Anchor Admission Year" appearing under "Time" field
    Then I should see "Anchor Begin Date" appearing under "Time" field
    Then I should see "Anchor Discharge Date" appearing under "Time" field
    Then I should see "Anchor Discharge Month" appearing under "Time" field
    Then I should see "Anchor Discharge Quarter" appearing under "Time" field
    Then I should see "Anchor Discharge Week" appearing under "Time" field
    Then I should see "Anchor Discharge Year" appearing under "Time" field
    Then I should see "Dashboard Admission Month" appearing under "Time" field
    
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Participant" in the header text of filter page
    And I should see "<participant>" in the filter value list
    And I click on "<participant>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<participant>" result in "Participant" field column for "Episode Initiator" filter field
    
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<BPID1>" result in "BPID" field column for "Episode Initiator" filter field
    
    Examples:
    
      | email                         | participant | BPID1   |
      | shutestaug231132a@yopmail.com | Penn        | 2070-021|