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
  end
end
