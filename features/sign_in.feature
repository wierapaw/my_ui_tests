Feature: Sign In
  As an Alpha Blog user
  I want to sign in using my login and password
  So that I am able to see my account

  Background: Opening login page and session clean out
    Given I clear session
    And I go to the "/login" page
    Then I should see "Cancel and return to articles listing"
  
  Scenario: Succesful sign in
    When I fill in "session[email]" with "wierapaw@o2.pl"
    And I fill in "session[password]" with "wierapaw"
    And I click button "commit"
    Then I should see "Logged in succesfully"