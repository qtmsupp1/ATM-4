Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @testcasekey=FIT-TC-33
    Scenario: Withdraw less money
    Given I have $1100 on my account
    When I withdraw $500
    Then I get $500 from the ATM
    
    @testcasekey=FIT-TC-34
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $100
	Then I get $300 from the ATM
    
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 500 | 50 | 50 |