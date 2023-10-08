Feature: Nopcommerce Registration

  As a User I want to check Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given I open the Googe Chrome Browser
    When I open the URL https://demo.nopcommerce.com/register
    Then I am on Nopcommerece Registration page

  Scenario Outline: I should not be able to register with Invalid data on mandatory field (*) of registration page
    When I enter First Name "<firstname>"
    And I enter Last Name "<lastname>"
    And I enter Email Address "<email>"
    And I enter Password "<password>"
    And I enter Confirm Password "<confirm_password>"
    And Click on Registration button
    Then I can see Error message "<error_message>"
    And I am not able to register

    Examples:
      | firstname | lastname | email            | password | confirm_password | error_message                              |
      | " "       | bakshi   | bakshi@gmail.com | 456897   | 456897           | please enter First Name                    |
      | Rohan     | " "      | bakshi@gmail.com | 456897   | 456897           | please enter Last Name                     |
      | Rohan     | bakshi   | " "              | 456897   | 456897           | please enter valid email                   |
      | Rohan     | bakshi   | bakshi@gmail.com | " "      | 456897           | password is required                       |
      | Rohan     | bakshi   | bakshi@gmail.com | 456897   | " "              | confirm password is required               |
      | Rohan     | bakshi   | bakshi@gmail.com | 456897   | 45689            | password and confirm password do not match |
      | Rohan     | bakshi   | bakshi@gmail.com | 45689    | " "              | minimum 6 character password is required   |
      | " "       | " "      | " "              | " "      | " "              | Mandatory (*) filed is required            |

  Scenario: I should be able to select any one radio button from Gender label of your Personal Details section
    Given I am on Gender label of your Personal Detail section
    When I select "Male" radio button
    And I select "Female" radio button
    Then I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of Birth field
    Given I am on Date of Birth field on Your Personal Detail section
    When I select Day "<day>"
    And  I select Month "<month>"
    And  I select Year "<year>"
    Then I am able to select day, month and year from drop down list

    Examples:
      | day | month    | year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options section
    Given I am on Newsletter label on options section
    When  I click on Newsletter checkbox
    And I again click on Newsletter checkbox
    Then I am able to check and uncheck the box to Newsletter label

  Scenario: I should be able to register with mandatory (*) field data on registration page
    When I enter First Name "Rohan"
    And I enter Last Name "Bakshi"
    And I enter Email "bakshi@gmail.com"
    And I enter Password "456897"
    And I enter Confirm Password "456897"
    And  I click on Register button
    Then  I am able to Register Successfully


