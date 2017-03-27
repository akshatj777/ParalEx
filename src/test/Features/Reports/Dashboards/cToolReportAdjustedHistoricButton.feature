Feature: CTool Report Adjusted Historic Button Is not clickable

Scenario Outline: User should not be able to click on adjusted historic button for RPFIN and OPSFIN Roles

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I Click on "Adjusted" button appearing under benchmark in filter options
    And I verify current url is not changed after clicking on adjusted historic button
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |