Feature: Categories
  As a System Administrator
  In order to create valuable content
  I want to be able to manage categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the admin new category page
    And I should see "Categories"

  Scenario: Creating new category
    When I fill in "category_name" with "My Sample Cat"
    And I press "Save"
    Then I should see "My Sample Cat"

  Scenario: Editing category
    Given I follow "General"
    And I fill in "category_name" with "Default Cat"
    And I press "Save"
    Then I should see "Default Cat"
