class Transfer
  attr_accessor :bank_account, :status, :amount
  attr_reader :sender, :receiver
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid? # returns flase if untrue
  end
  
  def execute_transaction
    binding.pry
     if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
     
    elsif @status == "complete"
      puts "Transaction was already excuted"
    else
      @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
    end
    
  end
  
end
