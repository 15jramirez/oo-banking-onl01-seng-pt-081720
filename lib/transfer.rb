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
  
  end
  
end
