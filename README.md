# B2 Assessments

Base repository for B2 assessments and diagnostics.

This repository requires and has been tested on Ruby v2.5.3 and is based on Rails 5.2.4.3.

RSpec and Shoulda-Matchers have been installed and set up.

## Setup

1. fork this repo
2. clone your fork
3. `git clone <paste_repo>`
4. `cd b2-mid-mod`
5. `bundle install`

When you run `bundle exec rspec` you should have 0 tests.

## Instructions

* Work on this assessment independently. DO NOT discuss with anyone.
* Read each story carefully before you start working.
* Commit Frequently, about every 15 - 30 minutes
* Push your code to your fork once the time is up (not before!)

## Submission

Once the time for the assessment is up, push your code to your fork and create a pull request to the `turingschool-examples` repository. Include the following:

* Your Name
* A reflection on how you felt you did with this challenge and what story you got through

## Requirements

* TDD all new work
* model methods and relationships must be fully tested.

## Not Required

* No visual styling is required or expected
* You do not need to test for or create any model validations.

## User Stories

User Stories

User Story 1, Flights Show Page

As a visitor
When I visit a flights show page
I see all of that flights information including:
  - number
  - date
  - time
  - departure city
  - arrival city
And I see the name of the airline this flight belongs
And I see the names of all of the passengers on this flight


User Story 2, Passenger Show Page

As a visitor
When I visit a passengers show page
I see that passengers name
And I see a section of the page that displays all flight numbers of the flights for that passenger
All flight numbers are links to that flight’s show page


User Story 3, Assign a Passenger to a Flight

As a visitor
When I visit a passengers show page
I see a form to add a flight
When I fill in the form with a flight number (assuming these will always be unique)
And click submit
I'm taken back to the passengers show page
And I can see the flight number of the flight I just added


Extensions

Extension, Count of Minors and Adults on Flight

As a visitor
When I visit a flights show page
I see the number of minors on the flight (minors are any passengers that are under 18)
And I see the number of adults on the flight (adults are any passengers that are 18 or older)
