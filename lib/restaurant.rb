class Restaurant
    def initialize(dishes)
        fail "Please input a list menu" if !dishes.is_a? Array
        @menu = dishes
        @customers_dishes = {}
        @customers_total = {}
    end
    def add(customer, dish) # takes a list of a number of dishes on the menu and a customer instance
        # returns nothing and adds ordered dishes to state
        entry = @customers_dishes[customer]
        if(@customers_dishes[customer] != nil)
            index = entry.index{|e| e[:food] == dish[:food]}
            index ? entry[index][:quantity] += 1 : entry << dish
        else
            @customers_dishes[customer] = [dish]
        end
    end
    def total(customer)
        @customers_total[customer] = @customers_dishes[customer].map{|e| e[:price] * e[:quantity]}.sum
    end
    def menu 
        @menu
    end
    def view(customer)
        # returns list of added dishes and grand-total
        [@customers_dishes[customer], total(customer)]
    end
    def order(customer, phone)
        # returns string with delivery time
    end
end

class Customer
end