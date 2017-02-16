## Setup

1. Clone this [SalesEngine repo](https://github.com/turingschool-examples/sales_engine).
  * If you already have a directory named sales_engine, you can rename it when you run `git clone`.
2. Checkout the `needs_refactoring` branch and `bundle`.
3. Run the specs with `rspec`. You should have three passing specs.
4. Take a minute to review what is being tested and how that's happening.
5. Open up `lib/customer_repository.rb`... This doesn't look so good.

## Challenges

*The specs should stay green without changing them.*

1. Make a private method so we don't need to access `@customers_array` directly.
2. Refactor the `#random` method so it's more clear.
3. `#find_by_last_name` and `#find_all_by_first_name` are ugly. Make them pretty.
4. `#create_customers` is doing too much. Split in two methods.
5. This class is doing too much. Split it in two. What code smell do you notice to determine what should be moved?
