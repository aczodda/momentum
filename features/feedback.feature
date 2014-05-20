Feature: Momentum Feedback

Scenario: Agree with feedback given by another user
  Given I’m browsing the feedback feed
  And  I see a bit of praise that I agree with
  When I click on the “agree” link for that praise
  Then I should see my agreement reflected on the page
  