class Division
  attr_reader :name, :departments, :deps_with_multiple
  def initialize(name)
    @name = name
    @departments = []
  end

  def add_department(dep_name)
    @departments << dep_name
  end

  def deps_with_multiple
    deps_with_multiple_array = []
    @departments.each do |department|
      if department.employees.count > 1
        deps_with_multiple_array << department
      else
      end
    end
    deps_with_multiple_array
  end
end
