Feature: Nopcommerce Registration
  As a USer
  I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given     I open the Google Chrome Browser
    When      I open the Url https://demo.nopcommerce.com/register
    Then      I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid date on mandatory field (*)
  of registration page
    When  I enter first name "<First Name>"
    And   I enter last name "<Last name>"
    And   I enter Email address "<Email>"
    And   I enter Password "<Password>"
    And   I enter Confirm Password "<Confirm Password>"
    And   Click on Regiset button
    Then  I can see an error message "<error message>"
    Then  I am not able to register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password | error message                              |
      | ""         | bakshi    | bakshi@gmail.com | 456897   | 456897           | please enter First Name                    |
      | Rohan      | ""        | bakshi@gmail.com | 456897   | 456897           | plaese enter last name                     |
      | Rohan      | bakshi    | ""               | 456897   | 456897           | please enter valid email                   |
      | Rohan      | bakshi    | bakshi@gmail.com | ""       | 456897           | Password is required                       |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | ""               | cofirm password is required                |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | 456897           | password and confirm password do not match |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | ""               | minimum 6 character password is required   |
      | ""         | bakshi    | bakshi@gmail.com | ""       | ""               | Mandatory (*) filed is required            |

  Scenario:  I should be able to select any one radio button from Gender Label of your personal Details section
    Given    I am on Gender label of your parsonal detail section
    When     I select "Male" radio button
    And      I select "Female" radio button
    Then     I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and year from drop down list of Date of birth field
    Given  I am on Date of Birth field of your Personal Detail section
    When   I select day "<Day>"
    And    I select month"<Month>"
    And    I select Year "<Year>"
    Then   I am able to select Day, Month and year from drop down list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options section
    Given   I am on Newsletter label on Options section
    When    I click on Newsletter checkbox
    And     I again click on Newsletter Checkbox
    Then    I was able to check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When    I enter First name "Rohan"
    And     I enter Last name "bakshi"
    And     I enter Email "bakshi@gmail.com"
    And     I enter Password "456897"
    And     I Enter Confirm Password "456897"
    And     I check on Registration button
    Then    I was able to register successfully
