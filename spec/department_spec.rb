require './lib/employee'
require './lib/department'
require 'pry'

RSpec.describe Department do
  describe '#iteration 2' do
    it 'exists' do
      customer_service = Department.new("Customer Service")
      expect(customer_service).to be_a(Department)
    end

    it 'can read the department title' do
      customer_service = Department.new("Customer Service")

      expect(customer_service.name).to eq("Customer Service")
    end
  end
end
