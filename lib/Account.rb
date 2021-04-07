# frozen_string_literal: true

# account class
class Account
  attr_reader :account, :balance, :date

  def initialize
    @balance = 0
    @account = []
    @date = Date.new.current_date
  end

  def deposit(amount)
    @balance += amount
    @account << {
      date: @date,
      credit: nil,
      debit: amount,
      balance: @balance
    }
  end

  def withdraw(amount)
    raise Exception.new 'Not enough money on account' if amount > @balance

    @balance -= amount
    @account << {
      date: @date,
      credit: amount,
      debit: nil,
      balance: @balance
    }
  end

  def statement
    puts Hirb::Helpers::Table.render(
      @account,
      fields: %i[date credit debit balance]
    )
  end
end
