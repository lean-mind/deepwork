Feature: Entering DW mode

# Rules:
# 1. By default the Deep Work time box is 60 minutes.
# 2. Users may specify the time box from 40 minutes to 4 hours.
# 3. Custom status text expiration will be one hour to avoid eternal DW statuses

# TODO:
# To explore what to do when...
#    The user interacts with Slack whilst in DW mode:
#        She manually stops dnd mode
#        She manually changes her status text, or emoji
#


Scenario: Updating the status
  Given my custom status text is "carlosble"
  And my custom status emoji is ":speech_balloon:"
  When I enter DW mode
  Then my custom status text is "carlosble: 60 minutes of deep work ahead"
  And my custom status emoji is ":stopwatch:"

Scenario: Setting my presence as away
  Given my presence is "active"
  When I enter DW mode
  Then my presence is "away"

Scenario: Switch to do not disturb mode
  Given my status is active
  When I enter DW mode
  Then my status is "do not disturb"

Scenario: Updating the status with task name
    Given my custom status text is "carlosble"
    When I enter DW mode with "/dw start customer meeting via zoom"
    Then my custom status text is "carlosble: 60 minutes busy with customer meeting via zoom"