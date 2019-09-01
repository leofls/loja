require 'rails_helper'

RSpec.describe Customer, type: :model do
  context "Customer valid?" do
    it "Customer name presence" do
      customer = Customer.new(email: "example@email.com").save
      expect(customer).to eq(false) 
    end    

    it "Customer email presence" do
      customer = Customer.new(name: "name example").save
      expect(customer).to eq(false) 
    end 

  end  
end
