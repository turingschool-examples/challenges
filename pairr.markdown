# Pairr (/per-r/)

_It's like tinder, but for programmers_ - Ghost of Steve Jobs

_Pair Programming is my favorite kind of programming._ - Jeff Gu

_Get it? It's like Pairer, without the 'e'_ - Gschool Student

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc/generate-toc again -->
**Table of Contents**

- [Pairr (/per-r/)](#pairr-per-r)
    - [Tinder for Pair Programming](#tinder-for-pair-programming)
    - [About the Assignment](#about-the-assignment)
    - [Time Allotment](#time-allotment)
    - [Rubric](#rubric)
    - [Project Iterations](#project-iterations)
        - [Iteration 1: Account Creation / Sign In](#iteration-1-account-creation--sign-in)
        - [Iteration 2: Match Suggestion](#iteration-2-match-suggestion)
        - [Iteration 3: Better Match Suggestion](#iteration-3-better-match-suggestion)
        - [Iteration 4: Completing Matches](#iteration-4-completing-matches)
        - [Next Steps -- Iterations 5+ (Optional)](#next-steps----iterations-5-optional)
            - [Match Suggestion Enhancement](#match-suggestion-enhancement)
            - [Sliding Pair Recommendations](#sliding-pair-recommendations)
            - [Interface Design](#interface-design)
    - [Miscellany](#miscellany)
        - [FAQ](#faq)
        - [Available Programming Languages](#available-programming-languages)
        - [Sample User Accounts](#sample-user-accounts)
    - [Detailed Rubric](#detailed-rubric)
        - [1. Satisfactory Progress](#1-satisfactory-progress)
        - [2. Ruby Syntax & Style](#2-ruby-syntax--style)
        - [3. Rails Style & API](#3-rails-style--api)
        - [4. Testing](#4-testing)
        - [5. User Interface](#5-user-interface)

<!-- markdown-toc end -->

## Tinder for Pair Programming

Finding a perfect programming pair is hard. Let's see if we can
build an app that helps match programmers with their perfect pair.

## About the Assignment

For this assessment, you'll be individually building a small but
fully functional web application.

The assignment is organized into "iterations", and we encourage you
to approach each iteration as an isolated "sprint".

To get started, read through all of the iterations in order to get a
sense of the scope of the problem, but as you are working, try to avoid
working too far ahead of your current iteration.

To receive full credit for completion, you need to finish up to and 
including __Iteration 4 - Completing Matches__.

You may use any tools or libraries you like, but we obviously encourage
you to stick with tools that are comfortable and familiar to you. This
is probably not the time to start experimenting with that Erlang-based
neural network recommendation library you saw on hacker news last week.

## Rubric

The project will be assessed on the following criteria:

* Completeness (fulfilling all requirements described through Iteration
  4)
* Rails MVC and Application Structure -- Does your application use
  follow Rails patterns and idioms to keep logic organized and separate presentation
  logic from domain and persistence logic.
* Ruby and Object Oriented Programming -- Does your application follow
  good design principles such as SOLID and identify small chunks of
  functionality that can be isolated from one another.
* Testing -- Does your application make good use of testing as a design
  / development tool and demonstrate a good balance of testing at various
  application levels.
* User Interface -- Is your application's interface easy to understand and use.

## Project Iterations

### Iteration 1: Account Creation / Sign In

As a new user, when I first access the site, I should be prompted
to log in with GitHub. (None of our features are for non-authenticated
users, so a global login requirement is ok)

The first time I do this (initial account creation), I should be
taken to a second "User Information" screen, and prompted to enter
the following information:

* Preferred languages -- List of Checkboxes (check all that you're interested in).
  see below for a [sample list](#available-programming-languages)
* About Me -- Text Box -- Enter a short description, maximum 500
  characters. For this information, prompt users to describe what
  they're looking for in a pair, their coding interests, etc.

After submitting this information, I should be taken to the application
root, which should display a "Dashboard" / "Matches" Screen.
For the moment this will be empty.

__Note:__ To help you with testing/seeding your application,
a sample list of user account data is included. See [below](#sample-user-accounts) for more info.

### Iteration 2: Match Suggestion

When viewing the Dashboard, I should see a shiny button inviting me
to "Find Pairs". Clicking this should take me to a new screen,
where I will be shown potential pairs, and invited to match with them
or not.

For this iteration, let's not worry about how we're recommending
matches. Simply show profile information about the first
other user __whom I have not already been matched with__.

When suggesting a match, the application should display:

* User's github name
* User's github profile pic
* User's list of desired languages
* User's description

Below the other user's information, I should have 2 options:

* Approve match
* Reject match

If I Approve a match (button on the right):

* Information should be stored on the server indicating that I am
  interested in pairing with that user.
* That user should disappear and I should be shown another user account.
* That user should not appear in my recommendations again.

If I Reject a match (button on the left):

* Information should be stored on the server indicating that I am NOT
  interested in pairing with that user.
* That user should disappear and I should be shown another user account.
* That user should not appear in my recommendations again.

### Iteration 3: Better Match Suggestion

Our current setup is getting somewhere, but a match isn't that useful
until both users have approved it. Let's improve our match
recommendation algorithm to help facilitate this.

When generating potential matches:

__If there are any "pending" matches from other users to me__, then I
should be shown those users first, followed by other users where no
match information exists (as in iteration 2).

__Otherwise,__ I should be shown new user accounts in order, just as in
iteration 2.

In other words, users who have always Accepted a match with me
should be moved to the front of my recommendation "queue".

To help illustrate this, let's run through an example scenario:

* User A logs in and is shown User B's account
* User A approves the recommendation of User B
* User A is then shown User C/D/E...'s accounts
* User B logs in and is shown User A's account first, since there
  is a pending match between these 2, to which User B has not yet responded.
* User B responds to the match by approving/rejecting
* User B is then shown remaining User accounts C/D/E etc

__Note__ that there is no difference in the Interface between an initial
("blind") recommendation and a pending match (One where the other party
has already clicked, "Approve"). This information is (so
far) not visible to the user.

__Also Note__ that so far we don't need to do anything with the match
information we are collecting. For now just focus on getting the
recommendation-display portion wired up.

### Iteration 4: Completing Matches

So what happens when 2 users both approve a match? Well we need
to...match them somehow.

__Step 1 -- indicating match completion:__

As a user (User A) browsing recommendations,

when I approve a user (User B)

and that user has previously also approved a match with me

then I should see a message indicating "Congrats User A, you and User B
are a good match!"

__Step 2 -- recording completed matches:__

As a user (User A) browsing recommendations,

when I approve a user (User B)

and that user has previously also approved a match with me

and I navigate to my Dashboard, I should see a list of completed
matches, indicating that I (User A) was matched with (User B).

### Next Steps -- Iterations 5+ (Optional)

__Congratulations! You have finished the required portion of the assignment!__

_If_ you finish iterations 1-4 and ~~are looking for additional punishment~~
want to add additional functionality to the application, consider the following extensions:

#### Match Suggestion Enhancement

We're collecting preferred language
information from our users, but not currently acting on it. Let's
enhance our recommendation algorithm to take this information into
account:

As a user, when browsing potential matches, I should only see
recommended matches with whom I share at least 1 common preferred
language.

#### Sliding Pair Recommendations

Kids these days are all about flashy UI's with
lots of interactive movement. Update our recommendation UI so that
when I accept or reject a match, the next recommened match slides
onto the screen from the appropriate direction (right for approve,
left for reject)

#### Interface Design

The best algorithms in the world won't sell
our app if it looks like crap. Spend some time to add nicer styling
to your application. There aren't any hard guidelines here, but
things we'll be looking for include:

* Consistent use of standardized design elements throughout the
  application (buttons, font, text styles, indentation and spacing, etc)
* Clear informational hierarchy on each page allowing us to clearly
  identify information that is grouped or related
* Judicious use of icons or visual elements to add context to textual
  information (e.g. Check-mark/X-mark for accept/reject, icons for
  programming languages, etc)
* Careful use of spacing to help the interface feel comfortable and airy
  rather than crowded and cluttered.

## Miscellany

### FAQ

* Production Deployment not Required.
* Mobile/Responsive Interface not Required
* User auth is required for all pages in the app

### Available Programming Languages

Feel free to change or modify these as you see fit, but here's a list
of popular programming languages to seed your app:

* JavaScript
* Java
* Ruby
* C
* CSS
* PHP
* Python
* C++
* Objective-C
* C#
* Shell
* R
* CoffeeScript
* Go
* Perl
* Scala
* VimL
* Clojure
* Haskell
* Erlang
* Rust
* Swift

### Sample User Accounts

To help with testing/demoing your application, we've included a list
of sample github user accounts. It's ok if the attributes included with these
users don't match exactly with your DB schema, but you should be able to adapt them
appropriately.

You can find the sample user data [here](https://gist.github.com/worace/f5518e5f061202671e66).

## Detailed Rubric

Subjective evaluation will be made on your work/process according to the following criteria:

### 1. Satisfactory Progress

* 4: Developer completes iterations 1 through 4 as well as an additional feature from iteration 5
* 3: Developer completes iterations 1 through 4 with few bugs or missing functionality
* 2: Developer completes iterations 1, 2, and 3 with some bugs or missing functionality
* 1: Developer fails to complete iterations 1 and 2, or there are significant issues with delivered functionality.

### 2. Ruby Syntax & Style

* 4: Developer is able to write Ruby demonstrating a broad/deep understanding of available language features. Application demonstrates great understanding of Object-Oriented modeling.
* 3: Developer is able to write idiomatic and effective Ruby. Application makes good use of Object-Oriented modeling with few gaps in class identification and component extraction.
* 2: Developer is able to accomplish tasks with Ruby code, but lacks attention to broader design and organizational concepts.
* 1: Developer is generally able to write Ruby, but code is sloppy, disorganized, or poorly factored.

### 3. Rails Style & API

* 4: Developer is able to craft Rails features that follow the principles of MVC, push business logic down the stack, and skillfully utilizes ActiveRecord to model application state.
* 3: Developer generally writes clean Rails features that make smart use of Ruby, with some struggles in pushing logic down the stack. The application displays good judgement in modeling the problem as data.
* 2: Developer struggles with some concepts of MVC
* 1: Developer struggles with MVC and pushing logic down the stack
* 0: Developer shows little or no understanding of how to craft Rails applications

### 4. Testing

* 4: Developer excels at taking small steps and using the tests for *both* design and verification
* 3: Developer writes tests that are effective validation of functionality, but don't drive the design
* 2: Developer uses tests to guide development, but implements more functionality than the tests cover
* 1: Developer is able to write tests, but they're written after or in the middle of implementation
* 0: Developer does not use tests to guide development

### 5. User Interface

* 4: The application is pleasant, logical, and easy to use
* 3: The application has many strong pages/interactions, but a few holes in lesser-used functionality
* 2: The application shows effort in the interface, but the result is not effective
* 1: The application is confusing or difficult to use
