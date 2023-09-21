# Monopoly Bank Challenge

## Milburn Pennybags' Monopoly Bank 

Mr. Monopoly's bank has become too big to fail, so Hasbro has decided to break up this infamous bank.

But they need a programming wiz to create the software to run these banks. 

## Specification

### Level 1

Using classes, meet the following requirements:

(Note: Assume the default unit of currency is the USMD (United States Monopoly Dollar).)

* Create a Person class to model a person. This person should have a name and a level of cash.
````
person1 = Person.new("Jake", 1000)

Jake has been created with 1000 dollars in cash.

person2 = Person.new("Luna", 500)

Luna has been created with 500 dollars in cash.
````

* The person class should store a person's cash level, which banks they have an account with, and their balances at each bank.
* Create a Bank class to create Banks with. Each bank should have a unique name. 

````
chase = Bank.new("JP Morgan Chase")

JP Morgan Chase has been created.

wells_fargo = Bank.new("Wells Fargo")

Wells Fargo has been created.
````

* The bank class should have a method that allows the creation of an account that is attached to a person, by passing it a person. 

````
chase.open_account(person1)

An account has been opened for Jake with JP Morgan Chase.

````
* Banks should be able to accept deposits by passing in a person and deposit amount to the deposit method.
* When accepting a deposit, the person's cash level should decrease by the deposit amount, and the bank account balance should increase by that amount.
````
chase.deposit(person1, 750)

750 dollars have been deposited into Jake's Chase account. Balance: 750 Cash: 250 
````


* A person should not be able to deposit more than their current level of cash.

````
chase.deposit(person1, 5000)

Jake does not have enough cash to perform this deposit.

````

* Banks should be able to do withdrawals by passing in a person and withdrawal amount to the withdrawal method. 

````
chase.withdrawal(person1, 250)

Jake has withdrawn 250 dollars. Balance: 250
````
* A person should not be able to withdraw more than they have in a bank. (No overdrafting.)

````
chase.withdrawal(person1, 25000)

Insufficient funds.
````


* A bank should be able to transfer money to another bank. `chase.transfer(person1, wells_fargo, 250)`

````
chase.transfer(person1, wells_fargo, 250)

Jake has transferred 250 dollars from JP Morgan Chase to Wells Fargo.
````

* Again, a person should not be able to transfer more money than their balance.

````
chase.transfer(person1, wells_fargo, 25000)

Insufficient funds.
````

* A person should not be able to transfer money to or from a bank they do not have an account with.

````
chase.transfer(person1, wells_fargo, 250)

Luna does not have an account with Wells Fargo.
````

* There should be a method that tells us the current total cash in the bank.

````
chase.total_cash

Total Cash: 750 dollars
````

### Level 2

In this new financial climate, there are now companies offering Monopoly residents lines of credit, as these citizens are spending too much on avocado toast and don't have enough cash on hand to buy property!

* There should be a Credit class, and each Credit should have a unique name. `amex = Credit.new("AMEX")`
* When you open a line of credit, you pass it a person, a credit limit and an interest rate. `amex.open_credit(person1, 100, 0.05)`
* A person should be able to spend against your credit limit. `amex.cc_spend(person1, 50)`
* A person should not be able to spend more than their credit limit.
* A person should be able to pay down their credit balance. 
* A person should not be able to pay down their credit balance with more than their cash on hand.


### Extensions
* Use TDD to complete this
* Modify your program to handle the different denominations of currency. For your reference: there are 17 Monopoly nickels 
to a US Monopoly Dollar, and 29 Monopoly pennies to a nickel
