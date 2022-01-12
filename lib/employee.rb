class Employee
  attr_reader :data, :name, :age, :salary
  def initialize(data)
    @data = data
    @name = data[:name]
    @age = data[:age].to_i
    @salary = data[:salary].to_i
  end

end
