Feature: Test the Demo TPMR Account Signup Page

  Background:
    Given I open the site "/"

  Scenario: Title is not Google
    Then I expect that the title is not "Google"

  Scenario: Title is TPMR Account Signup
    Then I expect that the title is "TradePMR Account Signup"

