require './lib/employee'
require './lib/department'
require './lib/division'
require 'pry'

RSpec.describe Division do
  describe '#iteration 3' do
    it 'exists' do
      assembly = Division.new("Assembly")

      expect(assembly).to be_a(Division)
    end

    it 'can read the name' do
      assembly = Division.new("Assembly")
      expect(assembly.name).to eq("Assembly")
    end

    it 'has array to hold its departments' do
      assembly = Division.new("Assembly")
      bottling = Department.new("Bottling")
      quality_control = Department.new("Quality Control")

      expect(assembly.departments).to eq([])
    end

    it 'can add to the array of departments' do
      assembly = Division.new("Assembly")
      bottling = Department.new("Bottling")
      quality_control = Department.new("Quality Control")

      expect(assembly.departments).to eq([])
      assembly.add_department(bottling)
      assembly.add_department(quality_control)
      #
      expect(assembly.departments).to eq([bottling, quality_control])
    end

    it 'can return any department with multiple employees' do
      assembly = Division.new("Assembly")
      bottling = Department.new("Bottling")
      quality_control = Department.new("Quality Control")
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
      dani = Employee.new({name: "Dani Dani", age: "30", salary: "125000"})
      luke = Employee.new({name: "Luke Pascale", age: "36", salary: "98000"})
      assembly.add_department(bottling)
      assembly.add_department(quality_control)
      quality_control.hire(bobbi)
      quality_control.hire(luke)
      quality_control.hire(dani)
      bottling.hire(aaron)

      expect(quality_control.employees).to eq([bobbi, luke, dani])
      expect(bottling.employees).to eq([aaron])
      expect(assembly.deps_with_multiple).to eq([quality_control])
    end

    xit 'can return a list of employee names' do
      assembly = Division.new("Assembly")
      bottling = Department.new("Bottling")
      quality_control = Department.new("Quality Control")
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
      dani = Employee.new({name: "Dani Dani", age: "30", salary: "125000"})
      luke = Employee.new({name: "Luke Pascale", age: "36", salary: "98000"})
      assembly.add_department(bottling)
      assembly.add_department(quality_control)
      quality_control.hire(bobbi)
      quality_control.hire(luke)
      quality_control.hire(dani)
      bottling.hire(aaron)
      # binding.pry was still working on this when time ran out.
      expect(quality_control.employees.names).to eq(["Bobbi Jaeger", "Luke Pascale", "Dani Dani"])
    end
  end
end
