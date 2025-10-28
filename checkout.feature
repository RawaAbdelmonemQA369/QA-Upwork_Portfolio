Feature: Checkout Process

  As a registered user
  I want to purchase items from my shopping cart
  So that I can complete my order successfully and receive confirmation

  # --- SCENARIO 1 ---
  Scenario: Proceed to checkout with items in cart
    Given the user has added items to the shopping cart
    When the user clicks the "Checkout" button
    Then the checkout page should be displayed
    And the order summary should list all selected items

  # --- SCENARIO 2 ---
  Scenario: Checkout with empty cart
    Given the user has an empty shopping cart
    When the user clicks the "Checkout" button
    Then a message "Your cart is empty" should be displayed
    And the user should remain on the cart page

  # --- SCENARIO 3 ---
  Scenario: Enter valid shipping details
    Given the user is on the checkout page
    When the user enters valid shipping information
      | name | Rawa Abdelhadi |
      | address | 123 QA Street |
      | city | Amman |
      | zip | 11953 |
    Then the "Continue to Payment" button should become enabled

  # --- SCENARIO 4 ---
  Scenario: Leave required fields blank
    Given the user is on the checkout page
    When the user leaves mandatory fields empty
    And clicks "Continue to Payment"
    Then validation messages should appear for each required field

  # --- SCENARIO 5 ---
  Scenario: Select payment method (Credit Card)
    Given the user is on the payment step
    When the user selects "Credit Card" as the payment option
    Then credit card input fields should appear

  # --- SCENARIO 6 ---
  Scenario: Enter valid payment details
    Given the user selected "Credit Card" as the payment method
    When the user enters valid card information
      | card number | 4111111111111111 |
      | expiry | 12/27 |
      | CVV | 123 |
    And clicks "Pay Now"
    Then a success message "Payment Successful" should be displayed

  # --- SCENARIO 7 ---
  Scenario: Invalid credit card number
    Given the user selected "Credit Card" as the payment method
    When the user enters an invalid card number
      | card number | 123456 |
    And clicks "Pay Now"
    Then an error message "Invalid card details" should be displayed

  # --- SCENARIO 8 ---
  Scenario: Apply valid discount code
    Given the user is on the checkout page
    When the user enters discount code "QA369"
    And clicks "Apply"
    Then a success message "Discount applied" should be displayed
    And the total amount should be reduced accordingly

  # --- SCENARIO 9 ---
  Scenario: Apply invalid discount code
    Given the user is on the checkout page
    When the user enters discount code "WRONGCODE"
    And clicks "Apply"
    Then an error message "Invalid or expired code" should be displayed

  # --- SCENARIO 10 ---
  Scenario: Complete checkout successfully
    Given the user entered valid shipping and payment details
    When the user clicks "Place Order"
    Then the order confirmation page should appear
    And a confirmation message "Thank you for your purchase!" should be displayed
    And the order ID should be shown
