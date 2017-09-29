Feature: Test the Demo TPMR Account Signup Page

  Background:
    Given I open the site "/"

  Scenario: Title is not Google
    Then I expect that the title is not "Google"

  Scenario: Title is TPMR Account Signup
    Then I expect that the title is "TradePMR Account Signup"

  Scenario: First name is required
    Then I expect an error "First Name is required"

  Scenario: Last name is required
    When I set "Mohd" to the inputfield "#firstName"  
    Then I expect an error "Last Name is required"

  Scenario: Email is required
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    Then I expect an error "Email is required"

  Scenario: Email must be valid 
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar" to the inputfield "#email"  
    Then I expect an error "A valid email is required"

  Scenario: Password must be greater than or equal to 8 chars
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    Then I expect an error "Password must be greater than or equal to 8 characters"

  Scenario: Password must match!
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    When I set "foobar12" to the inputfield "#password"
    Then I expect an error "Passwords must match!"

  Scenario: Password must match!
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    When I set "foobar12" to the inputfield "#password"
    When I set "foobar12" to the inputfield "#passwordConfirm"
    Then I expect an error "How old are you?"

  Scenario: Age is required
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    When I set "foobar12" to the inputfield "#password"
    When I set "foobar12" to the inputfield "#passwordConfirm"
    Then I expect an error "How old are you?"

  Scenario: Must be older than 12
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    When I set "foobar12" to the inputfield "#password"
    When I set "foobar12" to the inputfield "#passwordConfirm"
    When I set "12" to the inputfield "#age"
    Then I expect an error "You must be older than 12 to open an account"

  Scenario: Phone is required
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    When I set "foobar12" to the inputfield "#password"
    When I set "foobar12" to the inputfield "#passwordConfirm"
    When I set "22" to the inputfield "#age"
    Then I expect an error "A valid phone is required"

  Scenario: Social Security Number is required
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    When I set "foobar12" to the inputfield "#password"
    When I set "foobar12" to the inputfield "#passwordConfirm"
    When I set "22" to the inputfield "#age"
    When I set "9045667890" to the inputfield "#phone"
    Then I expect an error "A valid social security number is required"

  Scenario: Submit button visible when form is valid
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    When I set "foobar12" to the inputfield "#password"
    When I set "foobar12" to the inputfield "#passwordConfirm"
    When I set "22" to the inputfield "#age"
    When I set "9045667890" to the inputfield "#phone"
    When I set "999999999" to the inputfield "#ssn"
    Then I expect the submit button to be visible

  Scenario: Form submits successfully when form is valid
    When I set "Mohd" to the inputfield "#firstName"  
    When I set "Ali" to the inputfield "#lastName"  
    When I set "foobar@gmail.com" to the inputfield "#email"  
    When I set "foobar12" to the inputfield "#password"
    When I set "foobar12" to the inputfield "#passwordConfirm"
    When I set "22" to the inputfield "#age"
    When I set "9045667890" to the inputfield "#phone"
    When I set "999999999" to the inputfield "#ssn"
    Then I expect the submit button to be visible
    When I click on the button "#submit"
    Then I expect that element "h1" matches the text "Thank you"
