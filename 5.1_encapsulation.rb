# With Encapsulation

class Person
  def check_bank_balance(password)
    @bank_account.get_balance(password)
  end
end

class BankAccount
  def initialize(password)
    @password = password
    @balance = rand(1000)
  end

  def get_balance(password)
    # check if password matches
    # if it matches, show balance
    # if not, do nothing

    if verify_password(password)
      puts @balance
    end
  end

  private
  def verify_password(password)
    password == @password
  end
end

bank_account.password => #error
bank_account.balance => #error
bank_account.verify_password("123") => #error
