Feature: As a restuarnt visitor
  In order to make my order i should be able to :
    - add dishes to my basket
    - add quantity ordered
    - non registerd not to be able to add dishes to basket

    Background:
      Given the following users exists
        | username | password | password_confirmation | admin | email | phone_number |
        | Mazen | same | same | true | mine@any.com | 028756778 |
        | Thomas | shme | shme | true | youe@any.com | 098756678 |
        | Rich | saje | saje | false | addr@any.com | 098734778 |
        | Fat | qwer | qwer | false | qwer@ew.com | 098765456 |
        | Visitor | password | password | false | visitor@random.com | 12345667 |
      Given the following categories exists
        | name |
        | Starter |
        | Main Course |
        | Dessert |
      Given the following dishes exists
        | name | category | price | user |
        | Salad | Starter | 30 | Mazen |
        | Soup | Starter | 40 | Mazen |
        | Fries | Starter | 35 | Mazen |
        | Pasta | Main Course | 90 | Mazen |
        | Pizza | Main Course | 85 | Thomas |
        | Kebab | Main Course | 110 | Thomas |
        | Cake | Dessert | 50 | Thomas |
        | Fruit | Dessert | 60 | Thomas |
        | IceCream | Dessert | 75 | Mazen |

  Scenario: Add dish to basket
    Given I am logged in as Visitor
    And I am on the home page
    And I click on "Menu"
    Then I should be on the "Menu" page
    # whhile am on "Fries"
    #And I fill in "quantity" with "2"
    #And I click on "Add Fries to Basket"
    #Then I should see "Fries added to your basket"