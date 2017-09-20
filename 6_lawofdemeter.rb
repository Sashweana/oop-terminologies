# Law of Demeter
# Don't chain many methods together

class Employee
  def request_raise
    @company.hr_department.hr_officer.request_raise # BAD
  end
end

class Company
end
