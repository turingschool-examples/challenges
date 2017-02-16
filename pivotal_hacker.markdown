## Pivotal Hacker

Managing projects is hard. Let's see if we can make a tool to help with the process.

In this challenge we'll be building a simple project management application in the vein of Pivotal Tracker/Trello/etc.

### Base Features - All Required

#### 1. Creating/Viewing Boards

Upon accessing the application, a user should see a simple list of existing boards,
as well as an option to create a new board. When creating a new board,
the user _must provide_ a "Title".

Upon selecting or creating a board, they should be taken to the board page.
This should include the familiar 4-status interface of Agile ticket states ("backlog", "current sprint", "in progress", and "done").

These states can be rendered horizontally or vertically as you see fit,
but the interface should include clearly differentiated sections for
each state.

#### 2. Creating/Viewing Tickets

When viewing a board, a user should have the option, via a form
positioned clearly on the page, to create a new ticket.

When creating a new ticket, the user _must provide_ a "Title". They _may
also_ provide a "Description" (textbox) and a "Status" (dropdown selection of available ticket states).

If not provided, the description should be blank, and the status should default to "backlog".

Existing tickets should be displayed on the page grouped under the appropriate
"status" section.

#### 3. Manipulating Tickets

Once a ticket has been created, a user should be able to move it through
the various ticket states. To facilitate this, each ticket should be
rendered with links or buttons for the appropriate "neighbor" states.

Thus, given the states "backlog", "current sprint", "in progress", and
"done", a ticket in the "current sprint" state should include links to
"move to backlog" and "move to in progress".

A ticket in the "backlog" state would only include one link: "move to
current sprint".

Clicking the link should send the appropriate request to the server to
update the ticket's status. Upon the next page load, it should show up
in the newly update column.

### Extensions (optional)

#### 1: Ticket Expand/Collapse (easy)

With all this ticket info on our board, the UI is getting crowded.
Update the Board UI so it only renders the ticket titles by default.
Then give users a link or button for "more detail". When this is
clicked, expand the ticket to display the entire description.

Once a ticket is expanded, display another link for "less detail". When
this is clicked, collapse ticket back to its original state and restore
the "more detail" link.

#### 2: Ajax Ticket Updates (medium)

Waiting a page reload to see our tickets updated is tedious. Use a JS
handler to update your ticket statuses via ajax. When the server sends a
successful response, move the ticket to the updated column.

#### 3: State Machine (difficult)

A tracker app like this one is a perfect example of a software pattern called a "State Machine".

Simply put, state machines are a way of modeling behavior as a series of
distinct application "states", which data can move through in a linear flow.

This is useful because we often want to trigger additional behaviors when a
certain state boundary is traversed (e.g. moving from "in progress" to "done").

Enhance your application with a set of abstractions around state
modeling.

* Include a "state" or "status" column on the ticket model (you'll probably have
  this already)
* Extract a "StateMachine" module in your application which will be
  included in the Ticket model
* Through the StateMachine module, provide a simple "DSL" for defining valid states programatically,
  e.g. `has_states [:backlog, :ready, :in_progress, :done]`
* When a model invokes the `.has_states` method, dynamically give its
  instances predicate methods to inquire about their state. (i.e.
  calling `has_states :backlog` would give instances of the appropriate
  model a `#backlog?` method, which would answer whether the model is in
  that state or not.

## Rubric

Subjective evaluation will be made on your work/process according to the following criteria:

#### 1. Satisfactory Progress

* 4: Developer completes all elements of both challenges as well as one or more extensions.
* 3: Developer completes all elements of both challenges.
* 2: Developer completes most elements of both challenges, with one or two minor features missing.
* 1: Developer struggles to make progress.

#### 2. Ruby Syntax & Style

* 4: Developer is able to write Ruby demonstrating a broad/deep understanding of available language features. Code that is exceptionally clear and well-factored.
* 3: Developer is able to write Ruby structures with a minimum of API reference, debugging, or support while balancing conciseness & clarity
* 2: Developer is able to write Ruby structures, but needs some support with method names/concepts or debugging syntax
* 1: Developer is generally able to write Ruby, but spends significant time debugging syntax or looking up elementary methods/concepts
* 0: Developer struggles with basic Ruby syntax

#### 3. Rails Style & API

* 4: Developer is able to craft Rails features that follow the principles of MVC, push business logic down the stack, and effectively utilizes ActiveRecord to model application state.
* 3: Developer generally writes clean Rails features that make smart use of Ruby, with some struggles in pushing logic down the stack
* 2: Developer struggles with some concepts of MVC
* 1: Developer struggles with MVC and pushing logic down the stack
* 0: Developer shows little or no understanding of how to craft Rails applications

### 4. Testing

* 4: Developer excels at taking small steps and using the tests for *both* design and verification
* 3: Developer writes tests that are effective validation of functionality, but don't drive the design
* 2: Developer uses tests to guide development, but implements more functionality than the tests cover
* 1: Developer is able to write tests, but they're written after or in the middle of implementation
* 0: Developer does not use tests to guide development
