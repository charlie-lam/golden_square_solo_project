# Restaurant Class Design Recipe

## 1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

    

## 2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.



# {{PROBLEM}} Multi-Class Planned Design Recipe
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

class Customer
    def initialize(restaurant)
        ...
    end

    def add(dishes) # takes a list of a number of dishes on the menu
        # returns nothing and adds ordered dishes to state
    end
    def view
        # returns list of added dishes
    end
    def order(phone)
        # returns string with delivery time and submits order to state
    end
end

class Restaurant
    def initialize(dishes) # dishes is a list of hashes
        ...
    end
    def menu 
        # retuns list of dishes and prices
    end
end
```

## 3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.



# Gets all tracks
```ruby
    four_guys = restaurant.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    library.add(track_1)
    library.add(track_2)
    library.all # => [track_1, track_2]
```
## 4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
Encode each example as a test. You can add to the above list as you go.

## 5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
