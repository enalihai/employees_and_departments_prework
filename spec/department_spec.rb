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

    it 'can list the employees in a department' do
      customer_service = Department.new("Customer Service")

      expect(customer_service.employees).to eq([])
    end

    it 'can add employees' do
      customer_service = Department.new("Customer Service")
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
      customer_service.hire(bobbi)
      customer_service.hire(aaron)

      expect(customer_service.employees).to eq([bobbi, aaron])
    end
  end
end
