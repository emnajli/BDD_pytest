                                  Feature: Full Retirement Age Calculator
	As a worker, I want to use Retirement Age Calculator program to calculate my full retirement age and make decisions based on my retired age.
	Background:
	Given a program to calculate full retirement age which asks the users to enter the birth year and birth month.

Scenario: Calculate Retirement Age
	When the year “1954” is entered
	And the month “6” is entered
	Then the retirement age of “66” is returned.

Scenario: Calculate the Year of Retirement
	When the year “1999” is entered
	And the month “9” is entered
	Thenresults “2066” as the year of retirement.

Scenario: Calculate Additional Months for Full Retirement Age
	When the year “1938”is entered
	And the month “4” isentered
	Then the additional months “2” is returned

Scenario Outline: Calculate Full Retirement Age with Different Years and Months
	When the year “<birth_year>” and the month “<birth_month>” are entered
	Then display the full retirement age “<retirement_age>” and additional month “<add_months>”
	And this will be in “<retirement_month>” of “<retirement_year>”





