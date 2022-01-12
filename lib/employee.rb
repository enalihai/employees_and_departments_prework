class Employee
  attr_reader :data, :name, :age
  def initialize(data)
    @data = data
    @name = data[:name]
    @age = data[:age].to_i
  end

end
