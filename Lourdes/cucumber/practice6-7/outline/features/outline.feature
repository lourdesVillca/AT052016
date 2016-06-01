@feature
Feature: Withdraw Fixed Amount
The "Withdraw Cash" menu contains several fixed amounts to
speed up transactions for users.

@regression @sanity
Scenario: Withdraw fixed amount of $50
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $50
   Then I should receive $50 cash
         And the balance of my account should be $450
@smoke
Scenario: Withdraw fixed amount of $100
    Given I have $500 in my account
    When I choose to withdraw the fixed amount of $100
    Then I should receive $100 cash
       And the balance of my account should be $400
@regression
Scenario: Withdraw fixed amount of $200
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $200
   Then I should receive $200 cash
         And the balance of my account should be $300

@in_dev
Scenario: Withdraw fixed amount of $500
   Given I have $1000 in my account
   When I choose to withdraw the fixed amount of $30
   Then I should receive $30 cash
         And the balance of my account should be $970

Scenario Outline: Withdraw fixed amount
  Given I have <Balance> in my account
  When I choose to withdraw the fixed amount of <Withdrawal>
  Then I should receive <Received> cash
    And  the balance of my account should be <Remaining>
  Examples:
    | Balance  | Withdrawal | Received | Remaining |
    | $500     | $50        | $50      | $450      |
    | $500     | $100       | $100     | $400      |
    | $500     | $200       | $200     | $300      |

