class Budget
  attr_reader :departments
  def initialize(year)
    @year = year
    @departments = []
  end
end
