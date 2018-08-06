class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(depositAmt)
    @balance +=depositAmt
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid? 
    if balance > 0 and status == "open"
      true 
    else
      false 
    end 
  end 
end
