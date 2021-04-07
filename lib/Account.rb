class Account
  attr_reader :account, :balance

  def initialize
    @balance = 0
    @account = []
  end


  def deposit(amount)
    @balance += amount
    @account << {:date => Time.now.strftime("%d/%m/%Y"), :credit => 0, :deposit => amount, :balance => @balance}
  end

  def withdrawal(amount)
    @balance -= amount
    @account << {:date => Time.now.strftime("%d/%m/%Y"), :credit => amount, :deposit => 0, :balance => @balance }
  end

  def statement
    puts Hirb::Helpers::Table.render(@account, fields: [:date, :credit, :deposit, :balance])
  end


end
