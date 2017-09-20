class Employee
  def request_raise
    @company.send_raise_request
  end
end

class BraintreeCompany
  def send_raise_request
    # can send to hr department
    # can send to ceo directly
  end
end

class HPCompany
  def send_raise_request
    # can send to ceo directly
  end
end
