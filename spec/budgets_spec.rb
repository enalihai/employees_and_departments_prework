require 'pry'
require './lib/budget'
require './lib/employee'
require './lib/department'

RSpec.describe Budget do
  describe '#iteration 3' do
    it 'exists' do
      yearly_budget = Budget.new("2021")

      expect(yearly_budget).to be_a(Budget)
    end

    it 'can list all of its departments' do
      yearly_budget = Budget.new("2021")
      customer_service = Department.new("Customer Service")
      sales = Department.new("Sales")

      expect(yearly_budget.departments).to eq([])
    end

    it 'can add to the list of departments' do
      yearly_budget = Budget.new("2021")
      customer_service = Department.new("Customer Service")
      sales = Department.new("Sales")
      yearly_budget.add_to_budget(customer_service)
      yearly_budget.add_to_budget(sales)

      
      expect(yearly_budget.departments).to eq([customer_service, sales])
    end
  end
end
