# Goober -- Rides When You Want Them

_It's like Uber for...Uber._ - Jeff Casimir

_Finally I can put the LeBaron to work._ - Andrew Carmer

_Do they have a bike rickshaw option?_ - Horace Williams

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [Goober -- Rides When You Want Them](#goober----rides-when-you-want-them)
    - [Overview](#overview)
    - [Wireframes](#wireframes)
    - [Deployment](#deployment)
    - [Project Iterations](#project-iterations)
        - [Iteration 1 - Sign Up](#iteration-1---sign-up)
        - [Iteration 2 - Requesting Rides (Rider)](#iteration-2---requesting-rides-rider)
        - [Iteration 3 - Viewing Available Rides (Driver)](#iteration-3---viewing-available-rides-driver)
        - [Iteration 4 - Accepting Ride Requests (Driver)](#iteration-4---accepting-ride-requests-driver)
        - [Iteration 5 -- Picking up a Ride (Driver)](#iteration-5----picking-up-a-ride-driver)
        - [Iteration 6 -- Completing a Ride (Driver)](#iteration-6----completing-a-ride-driver)
        - [Iteration 7 -- Displaying Completed Rides (Rider and Driver)](#iteration-7----displaying-completed-rides-rider-and-driver)
        - [Iteration 8 -- Calculating Ride Cost (Driver and Rider)](#iteration-8----calculating-ride-cost-driver-and-rider)
        - [Iteration 9 -- Supporting Features](#iteration-9----supporting-features)
            - [A - Rider Page "live" updating (long-polling)](#a---rider-page-live-updating-long-polling)
            - [B - Ride Distance / ETA](#b---ride-distance--eta)
            - [C - Admins and "Rush" Pricing](#c---admins-and-rush-pricing)
    - [Detailed Rubric](#detailed-rubric)

<!-- markdown-toc end -->

## Overview

Ride-sharing is all the rage these days. We need to get in on
this gold rush before we get left behind!

In this project, we'll be building a simiplistic ride-sharing platform
_a la_ Lyft or Uber.

A basic overview of the features will be targeting includes:

* Signing up as a Rider or Driver
* Requesting rides (rider)
* Tracking # of passengers / available seats for drivers and ride requests
* Viewing available rides (driver)
* Accepting a ride (driver)
* Completing a ride (driver)
* Computing ride total
* Tracking and managing Ride Request state / lifecycle
* Special Supporting Features!

## Wireframes

![Wireframes](http://i.imgur.com/3A7oPuY.png)

## Deployment

For your evaluation, your project should be deployed and running on Heroku.

## Project Iterations

### Iteration 1 - Sign Up

When visiting the site for the first time, I should be prompted by
a "Sign Up" screen, and given the option to sign up as a __Rider__
or a __Driver__.

If I select "Rider", I should be shown a form for entering my:

* Name
* Email
* Phone Number
* Password
* Password Confirmation

If I select "Driver", I should be shown a form for entering my:

* Name
* Email
* Phone Number
* Password
* Password Confirmation
* Car Make
* Car Model
* Car's Passenger Capacity (must be a number)

Upon completing the sign up process, I should be logged in and
taken to a basic "Dashboard" page (empty for now).

The UI should additionally have options to Log Out an authenticated
user and to Log In an already existing account.

Other considerations:

* Email addresses should be unique across both Riders and
Drivers (for the time being we will assume a user wanting both
types of accounts will need to use 2 email addresses)
* For both sign up processes you can assume all of the data above are required

### Iteration 2 - Requesting Rides (Rider)

As an authenticated Rider, when viewing my Dashboard, I should
have an option to "Request a Ride". Selecting this should
take me to a setup screen where I am asked to enter:

* The pickup location (an address or cross-street)
* The dropoff location (address or cross-street)
* The number of passengers

Upon submitting this form, I should be returned to
my Dashboard page, which should indicate that
I have an "Active Ride Request", and show me the
information for the request I entered.

On the server, we'll need to store all of the above information,
and additionally put the request into an initial state
labeled "active".

__Ride Statuses__

We'll cover additional Ride Requests statuses
in future iterations, but as a preview, here are the basic states
we'll be covering:

* Active (rider has submitted request but no driver has accepted)
* Accepted (driver has accepted request but not picked up the rider)
* Picked Up / In Transit (driver has picked up rider)
* Completed (driver has dropped off rider and completed the trip)

__Ride Timeline__

In addition, we'll want to have insight into the timeline of each Ride
in the system. To this end, we'll want to track a few additional timestamps
for each ride. These include:

* Requested time (same as the "created" time)
* Accepted time (time when the ride was accepted by a driver)
* Pickup time (time when the ride was marked picked up by a driver)
* Dropoff time (time when the ride was marked completed by a driver)

__Technical Notes:__

* While my ride request is ongoing (any state prior to completed), I should be unable to submit another ride request.
* We don't have a very convenient way to verify the accuracy of a rider's
pick-up and drop-off locations, so for now we'll just accept this information
as valid

### Iteration 3 - Viewing Available Rides (Driver)

As an authenticated Driver, when a Rider has submitted a Ride
Request, I should be able to view my Dashboard and see the Request
among a list of available rides. The list should include:

* Each Ride's Pick-Up Location
* Each Ride's Number of Passengers
* An option to "Accept" the ride

Additionally, any requests for a number of passengers _greater than_
my listed Passenger Capacity should __not__ appear in the list.
(Remember that Drivers provide this information when they sign up).

__Technical Note__

* We'll be dealing with 2 main "dashboard" pages for the app -- one
for drivers and one for riders. We'll leave it up to you to
model these in terms of the application's routing and authorization
concerns
* Assume that any "un-authenticated" user attempting to visit a dashboard
should get redirected to the sign-up / log-in flow.
* If you choose to serve driver and rider dashboards on separate
URLs, make sure a user registered as a rider can't view the driver
dashboard and vice versa

### Iteration 4 - Accepting Ride Requests (Driver)

As an authenticated Driver, when a Rider has submitted a Ride
Request, and that Request appears on my Driver Dashboard,
I should have an option to "Accept Ride Request".

Selecting this option should:

* Update the ride's status to indicate it has been "Accepted"
* Update the ride to indicate who the assigned Driver
is. Each ride should only have 1 driver, assigned when
it is accepted.
* Update the ride to note the time at which it was accepted

__Displaying Accepted Ride Requests__

Once a Ride Request has been accepted (by a driver),
it should:

* Appear on the Driver's dashboard as the "Current Ride"
* Update the displayed status on the Rider's Dashboard to
indicate it has been accepted
* Add the Driver's information (Name and Car Info) to the Ride listing
on the Rider's dashboard

### Iteration 5 -- Picking up a Ride (Driver)

As an authenticated Driver, who currently has an Accepted
Ride from a Rider, when viewing the Current Ride on my
Dashboard, I should have an option to "Pick up Rider".

This action should update the ride's status to "Picked Up",
which should be reflected in the Current Ride section
of both the Rider and Driver Dashboards.

Additionally, the Ride should be updated to reflect
the time at which it was picked up.

### Iteration 6 -- Completing a Ride (Driver)

As an authenticated Driver, who currently has an Accepted
Ride from a Rider, when viewing the Current Ride on my
Dashboard, I should have an option to "Complete Ride".

Upon clicking this button:

* The ride's status should be updated to "Complete"
* The Driver should be eligible to accept another Ride
Request (they are no longer busy with another ride)
* The Rider should be eligible to request another ride
(they no longer have an active request)
* The ride should be updated to reflect the time at which
it was completed

### Iteration 7 -- Displaying Completed Rides (Rider and Driver)

Once a ride has been completed, it should appear
in a separate section in both the Rider's and Driver's dashboard
which lists all previously completed rides. The completed ride
listing should indicate for each ride:

* Who was the rider
* Who was the driver
* Pickup location
* Dropoff location
* Requested time
* Accepted time
* Picked up time
* Completed time
* Ride cost (covered in next iteration)

Additionally, once the ride is completed, the "active ride" section
of the Dashboard UI for both the rider and driver should return to
empty until a new active ride is created.

### Iteration 8 -- Calculating Ride Cost (Driver and Rider)

When a ride is completed, the system should calculate a cost
for it. The cost is based on the amount of time the ride
took, measured from its Pick-up time to its Completed time.

For now, use the formula $2 per 3 minutes of driving time.
Once computed, this cost should be added to the ride, and should
be displayed among the completed ride info on the Driver and Rider
dashboard.

### Iteration 9 -- Supporting Features

For the final iteration, you should select __one__ of the following
supporting features to add to the application.

#### A - Rider Page "live" updating (long-polling)

Riders want to be kept up to date on the status of their ride, and
there's nothing more annoying than having to constantly refresh a page
for a status update.

We don't have time to incorporate something as sophisticated as websockets,
but let's see if we can build a basic system to keep our riders' status pages
up to date.

When I am a rider, and I have requested a ride, my dashboard page should
periodically (say...every 3 seconds) ping the server to get any updated information
about the active ride. If new information is available, it should be incorporated
(via javascript, without reloading the page) into the dashboard UI.

The information we're interested in includes:

* Current / new ride status
* Current status entry time

For example:

After I have requested the ride, once a driver has accepted it, my dashboard
should automatically update to show the new ride's status as "Accepted" and
to indicate the "accepted at time".

The same process should happen once the ride transitions into "picked up"
and "complete".

Finally, once the ride has been "completed", an option should appear to
"clear" or "close" it from the active ride window.

#### B - Ride Distance / ETA

Riders want to know how long their ride will take. Let's add an interface
to help them discover this information.

For this interface, we'll be looking to capture:

* Distance from rider's entered Pickup location to Dropoff location
* Estimated trip duration from pickup location to dropoff location

To capture this information, we'll likely want to use:

* The [GeoKit Gem](https://github.com/geokit/geokit)
to convert your Riders' origins and destinations into Lat/Long pairs
* The [Google Directions API](https://developers.google.com/maps/documentation/directions/intro) to
get direction and duration info from those coordinates)

For basic (light) useage, you shouldn't need credentials to access these
APIs. But if you fail to adhere to the testing point below, your mileage may vary.

__Additional Technical Notes__

* We'd like to avoid hitting these APIs any more than necessary, so let's make sure
we save this information to our DB upon the initial ride creation
* We don't want to inadvertently blacklist ourselves from the Google geocoding
API, so make sure your test suite isn't hitting the live API. This can be
accomplished using traditional mocks and stubs, or the VCR gem.

#### C - Admins and "Rush" Pricing

Sometimes we just don't have enough drivers to go around! To help keep our supply
in line with rider demand, let's add a feature which allows us to temporarily
set a "Rush" price rate which increases the amount riders are charged
for a given length of ride.

In order to support this, we'll need to add a crude "admin" feature to our
system. For now, you can accomplish this by setting a special "admin" flag
on select user accounts. To simplify things, you can assume that:

* Admin accounts are classified as "riders" within the system (even if they don't
actually request any rides)
* Admin accounts are only created manually via the application console

If a user is classified as an admin, they should have access to a special
"rushes" section of the application. This system should include options to:

* View existing rushes
* Create a new rush by filling out a form
* Remove an existing rush

To create a Rush, the admin should enter a rate "multiplier", which should
represent a factor __greater than `1`__ by which fares will be increased.

Additionally, the system should maintain the limitation that there __can only
be one active Rush at a given time__.

Finally, while a Rush rate exists:

* Drivers and Riders should both see a simple message on their dashboard
indicating that a Rush is in effect, and displaying what the current Rush
rate is
* Any completed rides should have their calculated total include the Rush
multiplier. For example a ride with a pick-up time of `10:00 AM` and a drop-off
time of `10:15 AM` would normally have a cost of `$2 x 15/3 minutes = $10`.
Under a rush rate of `1.5x`, this ride would have its cost raised to `$15`.

__Additional Notes__

* For now we'll manage Rush rates by creating or deleting them manually, so
we don't need to worry about any scheduling or automated expiration logic
* For now we won't worry about the case when a ride begins during Rush but
ends after it. You can assess Rush rates based on whether a Rush is active
__when a ride is completed.__

## Detailed Rubric

Subjective evaluation will be made on your work/process according to the following criteria:

### 1. Satisfactory Progress

* 4: Developer completes iterations 1 through 9 as well as an additional supporting feature or other
fancy pizzazz.
* 3: Developer completes iterations 1 through 9 with few bugs or missing functionality
* 2: Developer completes iterations 1-6+ with some bugs or missing functionality
* 1: Developer struggles to complete initial 6 iterations, or there are significant issues with delivered functionality.

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

### 6. Javascript (if applicable)

* 4: Developer skillfully utilizes client-side development tools and
  patterns to enhance the application
* 3: Developer effectively uses Javascript to solve client-side
  application problems. Generally uses the right JS technique for the
  problem at hand.
* 2: Developer can accomplish some JS-based tasks, but sometimes
  struggles with syntax and selecting proper approach
* 1: Developer struggles to write effective Javascript. Code has
  significant flaws or basic syntax / structure issues.
