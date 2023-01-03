# Restaurant Multi-Class Planned Design Recipe
## 1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

    As a customer
    So that I can check if I want to order something
    I would like to see a list of dishes with prices.

    As a customer
    So that I can order the meal I want
    I would like to be able to select some number of several available dishes.

    As a customer
    So that I can verify that my order is correct
    I would like to see an itemised receipt with a grand total.

    As a customer
    So that I am reassured that my order will be delivered on time
    I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

## 2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

``` ruby
class Restaurant
    def initialize(dishes) # dishes is a list of hashes
        ...
    end
    def add(customer, dishes) # takes a list of a number of dishes on the menu and a customer instance
        # returns nothing and adds ordered dishes to state
    end
    def menu 
        # retuns list of dishes and prices
    end
    def view(customer)
        # returns list of added dishes and grand-total
    end
    def order(customer, phone)
        # returns string with delivery time
    end
end

class Customer
end

```

## 3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.


```ruby
    four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
    four_guys.menu # => [{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}]

    four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
    ed = Customer.new
    four_guys.add(ed, ["burger", "shake"])
    four_guys.view(ed) # => [{food:"burger", price: 8.00}, {food: "shake", price: 4.30}, {grand_total: 12:30}]


    four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
    ed = Customer.new
    four_guys.add(ed, ["burger", "shake"])
    four_guys.order(ed , 000000000000) # => "Thank you! Your order was placed and will be delivered before X"


```
    
## 4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

```ruby
    four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
    four_guys.menu # => [{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}]

    four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
    cust_dbl = double(:customer)
    four_guys.add(cust_dbl, ["burger", "shake"])
    four_guys.view(cust_dbl) # => [{food:"burger", price: 8.00}, {food: "shake", price: 4.30}, {grand_total: 12:30}]

    four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
    cust_dbl = Customer.new
    four_guys.add(cust_dbl, ["burger", "shake"])
    four_guys.order(cust_dbl , 000000000000) # => "Thank you! Your order was placed and will be delivered before X"

    four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
    cust_dbl = Customer.new
    four_guys.add(cust_dbl, ["burger", "steak"]) # => RaiseError "steak not on the menu"

```

## 5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
