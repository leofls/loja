require 'rails_helper'

RSpec.describe Product, type: :model do
  context "Product valid?" do
    it "Product name presence" do
      product = Product.new(description: "asdasdad", quantity: "2", price: "10.0").save
      expect(product).to eq(false) 
    end    

    it "Product quantity presence" do
      product = Product.new(name: "name example",description: "asdasdad", price: "10.0").save
      expect(product).to eq(false) 
    end 

    it "Product price presence" do
      product = Product.new(name: "name example",description: "asdasdad", quantity: "2").save
      expect(product).to eq(false) 
    end 
end
