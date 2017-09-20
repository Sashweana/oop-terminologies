class Salesperson
  def comission
    @revenue * 0.05
  end

  def salary
    2000 + comission
  end
end

class Programmer
  def salary
    3000
  end
end

employee_one = Salesperson.new
employee_two = Programmer.new

all_employees = [employee_one, employee_two]

sum_salaries = 0
all_employees.each do |employee|
  sum_salaries += employee.salary
end

# both Salesperson and Programmer implement salary method
# both salary methods return an integer
