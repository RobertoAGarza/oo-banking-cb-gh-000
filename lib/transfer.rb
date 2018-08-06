class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if sender.valid? and receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if @status == "pending"
      if sender.valid?
        sender.balance -= amount
        receiver.balance+= amount
        @status = "complete"
      else
        @status = "rejected"
        puts "Transaction rejected. Please check your account balance."
      end

    end
  end

end
