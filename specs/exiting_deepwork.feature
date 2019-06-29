Feature: Exiting DW mode

Background: I am in DW mode

Scenario: Restoring the status
  Given my custom status text is "carlosble"
  And my custom status emoji is ":speech_balloon:"
  When I exit DW mode
  Then my custom status text is "carlosble: 60 minutes of deep work ahead"
  And my custom status emoji is ":stopwatch:"

Scenario: Setting my presence as active
  Given my presence is "away"
  When I exit DW mode
  Then my presence is "active"

Scenario: Disabling to do not disturb
  Given my status is active
  When I exit DW mode
  Then my status is "do not disturb"

Scenario: Reconnecting to Slack
  Given I was in DW mode
  And I switched off my laptop
  When I restart and open up slack again
  Then the system exists DW mode for me

Scenario: Login out from Slack
  Given I was in DW mode
  When I log off
  Then the system exists DW mode for me

Scenario: Sending a message exits DW
  Given I am in DW mode
  When I send a message
  Then the system exists DW mode for me