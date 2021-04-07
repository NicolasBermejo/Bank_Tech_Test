class Account
  attr_reader :account, :balance

  def initialize
    @balance = 0
    @account = []
  end


  def deposit(amount)
    @balance += amount
    @account << {:date => Time.now.strftime("%d/%m/%Y"), :credit => nil, :deposit => amount, :balance => @balance}
  end

  def withdrawal(amount)
    if amount > @balance
      raise Exception.new "Not enough money on account"
    else
      @balance -= amount
      @account << {:date => Time.now.strftime("%d/%m/%Y"), :credit => amount, :deposit => nil, :balance => @balance }
    end
  end

  def statement
    puts Hirb::Helpers::Table.render(@account, fields: [:date, :credit, :deposit, :balance])
  end


end
