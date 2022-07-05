class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
 
  get '/tests' do
    Test.all.to_json
  end

  post '/users' do
    User.find_or_create_by(username: params[:username]).to_json(include: :tests)
  end 

  get '/:id/tests' do 
    User.find(params[:id]).tests.to_json
  end 


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

  patch '/tests/:id' do
    test = Test.find(params[:id])
    test.update(
      starred: params[:starred]
    )
    test.to_json
  end 



end
