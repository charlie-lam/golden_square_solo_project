require 'restaurant'

RSpec.describe Restaurant do
    context "Creates restaurant and Views the menu" do
        it "Pass - Returns the menu" do
            four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
            expect(four_guys.menu).to eq [{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}]
        end

        it "Fails - No menu added" do
            expect{four_guys = Restaurant.new("Hello")}.to raise_error "Please input a list menu"
        end

    end
    context "Customer add and view methods" do
        it "Pass - Adds two food items and returns the list of added dishes plus the grand-total" do
            four_guys = Restaurant.new([{food:"burger", price: 8.00}, {food:"hot dog", price: 5.60}, {food: "shake", price: 4.30}])
            ed = Customer.new
            four_guys.add(ed, {food:"burger", price: 8.00 , quantity: 1})
            four_guys.add(ed, {food: "shake", price: 4.30,  quantity:1})
            expect(four_guys.view(ed)).to eq [[{:food=>"burger", :price=>8.0, :quantity => 1}, {:food=>"shake", :price=>4.3, :quantity => 1}], 12.3]
        end
    end
end