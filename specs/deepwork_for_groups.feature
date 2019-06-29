Feature: Deep Work for groups

# Rules
# If one person of the group exits DW, the whole group does.

# TO-DO:
# Explore subteams in Slack. How do they work?

Scenario: Starting a DW group
  Given "James", "Nick" and "Ted" are going to work together
  When any team member writes "/dw group @james @nick @ted"
  Then the three of them enter DW mode
  And the custom status text for "James" will end with "working with @nick & @ted"
  And the custom status text for "Nick" will end with "working with @james & @ted"
  And the custom status text for "Ted" will end with "working with @james & @nick"

Scenario: Setting the group's task name
  Given "James" and "Nick" are going to work together
  When any team member writes "/dw group weekly meeting @james @nick"
  Then the three of them enter DW mode
  And the custom status text for "James" will end with "weekly meeting with @nick"
  And the custom status text for "Nick" will end with "weekly meeting with @james"

Scenario: Sending DM messages to members of my DW group is part of DW mode
  Given "Bob" is in DW mode with "James"
  When "Bob" sends a DM to "James"
  Then both of them stay in DW mode

Scenario: Sending messages to my DW group is part of DW mode
  Given "Bob" is in DW mode with "James" and "Ted"
  And they have a private channel for the three of them
  When "Bob" sends a message to this private channel
  Then both of them stay in DW mode
