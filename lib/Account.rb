# frozen_string_literal: true

# account class
class Account
  attr_reader :account, :balance

  def initialize
    @balance = 0
    @account = []
  end

  def deposit(amount)
    @balance += amount
    @account << {
      date: Time.now.strftime('%d/%m/%Y'),
      credit: nil,
      deposit: amount,
      balance: @balance
    }
  end

  def withdraw(amount)
    raise Exception.new 'Not enough money on account' if amount > @balance

    @balance -= amount
    @account << {
      date: Time.now.strftime('%d/%m/%Y'),
      credit: amount,
      deposit: nil,
      balance: @balance
    }
  end

  def statement
    puts Hirb::Helpers::Table.render(
      @account,
      fields: %i[date credit deposit balance]
    )
  end
end
