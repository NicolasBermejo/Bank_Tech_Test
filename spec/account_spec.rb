# frozen_string_literal: true

require './lib/account.rb'
require './lib/date.rb'
require 'hirb'

describe Account do
  subject { Account.new }
  it 'starts with an empty account' do
    expect(subject.balance).to eq(0)
  end

  it 'can deposit money' do
    subject.deposit(500)
    expect(subject.balance).to eq(500)
  end

  it 'can withdraw money' do
    subject.deposit(500)
    subject.withdraw(50)
    expect(subject.balance).to eq(450)
  end

  it 'cannot withdraw money if not enough on account' do
    expect { subject.withdraw(50) }.to raise_error(
      'Not enough money on account'
    )
  end

  it 'has the date of the transaction' do
    allow(Time).to receive(:now)
    allow(Time.now).to receive(:strftime).and_return(@time_now)
    subject.deposit(500)
    expect(subject.date).to eq(@time_now)
  end
end
