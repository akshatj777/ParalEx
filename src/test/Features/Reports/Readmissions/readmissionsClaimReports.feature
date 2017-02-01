Feature: Readmission claims Overall Program

  Scenario Outline: Verify that Readmission claims report display data based on provisioning
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports 
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe

    Then I should see Readmission reports column Tile text as "Participant"
    Then I should see Readmission reports column Tile text as "Episode Initiator"
    Then I should see Readmission reports column Tile text as "Anchor Facility"
    Then I should see Readmission reports column Tile text as "Bundle"
    Then I should see Readmission reports column Tile text as "Anchor Admission Quarter"

    When I click on field-panel-icon button
    And I wait for 4000 milli seconds

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

    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    And I click on "<anchorFacility2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<anchorFacility2>" result in "Anchor Facility" field column for "Anchor Facility" filter field

    When I click to "Episode Initiator" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Episode Initiator" in the header text of filter page
    And I should see "<episodeInitiator1>" in the filter value list
    And I click on "<episodeInitiator1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<episodeInitiator1>" result in "Episode Initiator" field column for "Episode Initiator" filter field

    When I click to "Bundle" field filter under "Bundle" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Bundle" in the header text of filter page
    And I should see "Amputation" in the filter value list
    And I should see "Atherosclerosis" in the filter value list
    And I click on "Amputation" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "Amputation" result in "Bundle" field column for "Bundle" filter field

    When I move the mouse to "CCN" field filter under "Anchor Facility" filter field
    And I double click on current mouse location element
    And I wait for 5000 milli seconds
    Then I should see Readmission reports column Tile text as "CCN"

    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I click on "<ccn1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<ccn1>" result in "CCN" field column for "Anchor Facility" filter field

    When I switch to default window from iframe
    When I click on close reports cross icon on report page
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples:
      | email                         | participant | anchorFacility1                  | anchorFacility2                  | episodeInitiator1                | ccn1   |
      | shutestaug231132a@yopmail.com | Penn        | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center | 390223 |