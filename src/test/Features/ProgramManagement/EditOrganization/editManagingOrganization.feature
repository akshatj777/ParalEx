Feature: User should be able to edit the details of an existing Managing Organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  @Smoke
  Scenario Outline: Edit and save changes for all fields of Managing Organization
    Then I search with <MO_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I verify <MO_Name> field in search list on organization page
    And I click <MO_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to <MO_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Contact Person" field to <Contact_Person> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "Contact Email" field to <Contact_Email> for organization
    And I edit "City" field to <City> for organization
    And I edit "Contact Phone" field to <Contact_Phone> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | MO_Name    | MO_Name1  | Contact_Person     | Contact_Email             | Contact_Phone | Address1  | Address2  | City | State      | Postal_Code |
      | MONameTest | MOName123 | Contact_PersonTest | contact_email@yopmail.com |    4567891230 | 7th Floor | Street XI | Test | California |       10000 |

  @Smoke
  Scenario Outline: Edit and save changes for all fields of Managing Organization to its previous state
    Then I search with <MO_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I verify <MO_Name> field in search list on organization page
    And I click <MO_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to <MO_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Contact Person" field to <Contact_Person> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "Contact Email" field to <Contact_Email> for organization
    And I edit "City" field to <City> for organization
    And I edit "Contact Phone" field to <Contact_Phone> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | MO_Name   | MO_Name1   | Contact_Person | Contact_Email            | Contact_Phone | Address1 | Address2 | City     | State    | Postal_Code |
      | MOName123 | MONameTest | C_PersonTest   | c_persontest@yopmail.com |    7894561230 | Address1 | Street2  | New York | New York |       10001 |
