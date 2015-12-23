Feature: basic operation

Scenario: showing all instruments
  Given there are some instruments in the database
  When I visit the instruments index
  Then I recieve all the instruments as JSON
  
Scenario: creating an instrument
  When I POST to "/instruments.json"
  Then I receive the created instrument as JSON
  
Scenario: showing a particular instrument
  Given there is one instrument in the database
  When I visit that instrument's page
  Then I recieve that instrument's details as JSON