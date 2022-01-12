require './lib/employee'

RSpec.describe Employee do
  describe '#iteration 1' do
    # before :each do
    #   bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    # end

    it 'exists' do
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})

      expect(bobbi).to be_a(Employee)
    end

    it 'can read the data' do
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})

      expect(bobbi.name).to eq('Bobbi Jaeger')
      expect(bobbi.age).to be(30)
    end
  end
end
