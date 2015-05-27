# Wizarding Bank Challenge

## Gringott's Wizarding Bank 

Gringott's has become too big to fail, so the Ministry of Magic has decided to break up this wizarding bank.

But they need, quite literally, a programming wizard to create the software to run these banks. 

## Specification

### Level 1

Using classes, meet the following requirements:

(Note: Assume the default unit of currency is the galleon.)

* Create a Bank class to create Banks with. Each bank should have a unique name. `chase = Bank.new("JP Morgan Chase")`
* Create a Person class to model a person. This person should have a name and a level of cash. `person1 = Person.new("John", 1000)`
* The person class should store a person's cash level, which banks they have an account with, and their balances at each bank.
* The bank class should have a method that allows the creation of an account that is attached to a person, by passing it a person. 
`chase.open_account(person1)`
* Banks should be able to accept deposits by passing in a person and deposit amount to the deposit method. `chase.deposit(person1, 500)`
* When accepting a deposit, the person's cash level should decrease by the deposit amount, and the bank account balance should increase by that amount.
* A person should not be able to deposit more than their current level of cash.
* Banks should be able to do withdrawals by passing in a person and withdrawal amount to the withdrawal method. `chase.withdrawal(person1, 250)`
* A person should not be able to withdraw more than they have in a bank. (No overdrafting.)
* A bank should be able to transfer money to another bank. `chase.transfer(person1, wells_fargo, 250)`
* Again, a person should not be able to transfer more money than their balance.
* A person should not be able to transfer money to a bank they do not have an account with.
* There should be a method that tells us the current total cash in the bank.


### Level 2

In this new financial climate, there are now comapnies offering wizards and witches lines of credit.

* There should be a Credit class, and each Credit should have a unique name. `amex = Credit.new("AMEX")`
* When you open a line of credit, you pass it a person, a credit limit and an interest rate. `amex.open_credit(person1, 100, 0.05)`
* A person should be able to spend against your credit limit. `amex.cc_spend(person1, 50)`
* A person should not be able to spend more than their credit limit.
* A person should be able to pay down their credit balance. 
* A person should not be able to pay down their credit balance with more than their cash on hand.


### Extensions
* Use TDD to complete this
* Modify your program to handle the different denominations of currency. For your reference: there are 17 silver Sickles 
to a gold Galleon, and 29 bronze Knuts to a Sickle.
