# frozen_string_literal: true

require './lib/account.rb'

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
end
