class Budget
  attr_reader :departments
  def initialize(year)
    @year = year
    @departments = []
  end

  def add_to_budget(department)
    @departments << department
  end
end
