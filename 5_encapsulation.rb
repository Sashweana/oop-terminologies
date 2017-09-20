# What is good code?
#
# 1. Code requirements change
# 2. to minimize the amount of code that needs to be rewritten?
# 3. Ensure objects are isolated from each other
#    (minimize public interface of an object)

# Without Encapsulation
class BankAccount
  attr_reader :password

  def init(password)
    @password = password
    @balance = rand(1000)
  end
end

class Person
  def check_bank_balance(password)
    if password == @bank_account.password
      puts @bank_account.balance
    end
  end
end
