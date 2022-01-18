class Budget
  attr_reader :departments
  def initialize(year)
    @year = year
    @departments = []
    @low_cost_deps = []
    @high_cost_deps = []
  end

  def add_to_budget(department)
    @departments << department
  end

  def under_five?
    @departments.each do |deps|
      deps.expenses <= 500
        @low_cost_deps << deps
      # binding.pry
    end
  end
end
