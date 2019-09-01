require 'rails_helper'

RSpec.describe Employee, type: :model do
  context "Employee valid?" do
    it "Employee name presence" do
      employee = Employee.new(email: "example@email.com").save
      expect(employee).to eq(false) 
    end    

    it "Employee email presence" do
      employee = Employee.new(name: "name example").save
      expect(employee).to eq(false) 
    end 
end
