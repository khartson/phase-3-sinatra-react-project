class Test < ActiveRecord::Base
  # Test
  # fields: 
  # text      - the text of the test
  # wpm       - wpm of the user after the test completes
  # errorChar - number of incorrect characters 
  # length    - length of the test in characters
  # starred   - whether a user has starred the test
  # user_id   - relates a test to a user

  # tests are many to one with respect to users 
  # a user can have many tests, a test has one user
  belongs_to :user
end