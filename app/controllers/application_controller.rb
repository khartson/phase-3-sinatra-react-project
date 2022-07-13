class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # get route for tests - R 
  # returns all of the tests by all users
  get '/tests' do
    Test.all.to_json
  end

  # get route for users - R
  # gets a user by ID 
  get 'user/:id' do 
    User.find(params[:id])
  end 

  # post route for users - C / R
  # a username is submitted with a post route
  # if the user already exists, return that user
  # if not, create a new one
  post '/users' do
    User.find_or_create_by(username: params[:username]).to_json(include: :tests)
  end 

  # post route for tests - C
  # creates a new test with information supplied on frontend
  # this information is handled by the frontend react-typing-game hook 
  # attaches the logged in userID in the relational database so that each
  # test corresponds to a user that took that test
  post '/tests' do
    test = Test.create(
      text: params[:text],
      wpm: params[:wpm],
      errorChar: params[:errorChar],
      length: params[:length],
      user_id: params[:user_id],
      starred: params[:starred]
    )
    test.to_json
  end 

  # patch route for tests - U 
  # allows a user to update the 'starred' property of a test
  # starred results can be displayed by toggling on the frontend,
  # which will filter by this field
  patch '/tests/:id' do
    test = Test.find(params[:id])
    test.update(
      starred: params[:starred]
    )
    test.to_json
  end 


  # delete route for tests - D
  # users have the option to delete one of their test results, 
  # in th event they want that information discarded. removes
  # from the database and deletes via state on frontend 
  delete '/tests/:id' do
    test = Test.find(params[:id])
    test.destroy
    test.to_json
  end 
  
end
