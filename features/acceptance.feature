Feature: basic operation

Scenario: showing all instruments
  Given there are some instruments in the database
  When I visit the instruments index
  Then I recieve all the instruments as JSON
