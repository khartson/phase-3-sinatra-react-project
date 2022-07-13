class User < ActiveRecord::Base
  # User
  # fields: 
  # username - screen name chosen by user
  # tests (by relation) - the tests related to 
  #                     a user account

  # user is one-to-many with respect to tests
  has_many :tests
end 