Feature: Cut Stocks
  As a store owner, in order to keep track f stock,
  I want product stocks to be cut when customer buy product

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Apple" with price 20.00 and stock of 50 exists

Scenario:
    When I buy "Apple" with quantity 10
    Then total should be 200.00
    Then ปริมาณคงเหลือในสต็อกของ "Apple" ควรมีจำนวน 40

Scenario Outline: Cut stock in table
    When I buy <product> with quantity <quantity>
    Then ปริมาณคงเหลือในสต็อกของ <product> ควรมีจำนวน <quantity_in_stock>
    Examples:
      | product       | quantity      | quantity_in_stock|
      | "Bread"       | 1             | 4     |
      | "Jam"         | 2             | 8     |
      | "Apple"       | 10            | 40    |