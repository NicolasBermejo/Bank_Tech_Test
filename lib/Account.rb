class Account
  attr_reader :account, :date, :credit, :deposit, :balance

@account = {}

  def balance
    p "this is your balance"
    menu
  end

  def deposit
  end

  def withdrawal
  end

  def statement
  end

  def main_menu
    puts """
    What would you like to do?
    To display your balance enter 1
    To deposit into your account enter 2
    To withdraw from your account enter 3
    to view your full statement enter 4
    to leave enter 5
    """

    input = gets.chomp

    case input
      when "1"
        balance
      when "2"
        deposit
      when "3"
        withdrawal
      when "4"
        statement
      when "5"
        exit
    end
  end

end
