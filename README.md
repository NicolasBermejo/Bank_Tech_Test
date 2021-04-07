<img src="./Images/bank_vaults.jpeg" alt="vault" style="width:500px; height:250px"/>

# Bank Tech Test

## Specifications

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User Stories

```
As a User
So I can fill up my account
I want to be able to deposit money
```
```
As a User
So I can take money out of my Account
I want to be able to withdraw money
```
```
As a User
So I can trace my actions
I want a date associated with my deposits & withdrawals
```
```
As a User
So I can check the status of my Account
I want to be able to print my balance/statement
```

## How to Use

* In order to use this, please clone this repo.
* once you open it in you text editor, please run
```
~ bundle install
```
* Then you will need to open REPL by typing 'irb' in your terminal:
```
~ irb
```
* Once in irb you will need to require the necessary files:
```
> require './lib/Account.rb'
> require 'hirb'
```
* Then you need to initialize the Account:
```
> account = Account.new
```
* Then type the following and follow the instruction on screen:
```
> account.menu
```
