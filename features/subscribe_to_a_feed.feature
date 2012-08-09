Feature: Subscribe to feed
  As the user
  I can subscribe to a feed
  In order to get news

  @wip
  Scenario: Subscribe to a single feed
    Given I am the logged in user
    When  I subscribe to a feed
    Then it appears in my subscription list

  @wip
  Scenario: Subscribe to an already subscribed feed
    Given I am the logged in user
    And I am subscribed to the feed
    When I subscribe to a feed
    Then my subscriptions don't change

