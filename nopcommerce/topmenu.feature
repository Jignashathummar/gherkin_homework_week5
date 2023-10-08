Feature: Demo Nopcommerce's topmenu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce topmenu

  //Background: User is on given URL
  //Given User type URL https://demo.nopcommerce.com
  //And USer click on enter button
  //Then  user is on given URL

  Scenario: Verify that user can navigate to Books category
    Given User is on https://demo.nopcommerce.com
    When  User is on given URL
    And Click on Book tab on top menu
    Then User is navigated to Book category page

  Scenario: Verify that user can see the books category page with filters and list of products
    Given User is on https://demo.nopcommerce.com
    When User is on given URL
    And Click on Book tab on top menu
    And Check filters and List tab
    Then Book category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'sort by' filter on Book category page
    Given User is on Book category page
    When User is on Book category page
    And  Check 'sort by' filter is present
    Then  'sort by' filter is available on Book category page

  Scenario: Verify that user can see 'Display' filter on Book category page
    Given User is on Book category page
    When User is on Book category page
    And Check 'Display' filter is present
    Then 'Display' filter is available on Book category page

  Scenario: Verify that user can see 'Grid' tab on Book category page
    Given User is on Book category page
    When User is on Book category page
    And Check 'Grid' tab is present
    Then 'Grid' tab is available on Book category page

  Scenario: Verify that user can see 'List' tab on Book category page
    Given  User is on Book category page
    When User is on Book category page
    And Check 'List' tab is present
    Then 'List' tab is available on Book category page

  Scenario: Verify that user can see 'Name:A to Z' selection is present in 'sort by' filter
    Given User is on Book category page
    When User is on Book category page
    And Click on 'sort by' filter
    And Check that 'Name:A to Z' selectionis present
    Then 'Name:A to Z' selection is present in 'sort by' filter

  Scenario: Verify that user can see 'Name:A to Z' selection is present in 'sort by' filter
    Given User is on Book category page
    When User is on Book category page
    And Click on 'sort by' Filter
    And Check that 'Name:A to Z' is first in order
    Then 'Name:A to Z' is first option in order

  Scenario: Verify that user can see 'Name:A to Z' filter is functioning as expected(Note: Products are filtered in alphabetical order )
    Given User is on Book category page
    When User is on Book category page
    And Click on 'sort by' filter
    And Select 'Name:A to Z' filter
    Then All products are displayed in alphabetical order