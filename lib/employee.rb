class Employee
  attr_reader :data, :name
  def initialize(data)
    @data = data
    @name = data[:name]
  end

end
