# typing-game-backend

typing-game is a Sinatra API project designed to interface with a  
[React Frontend](https://github.com/khartson/typing-game-frontend). This API is meant to support  
CRUD operations for the typing tests (similar to monkeytype) that a user creates on the frontend.  
Consequently, the app has two models - users and tests. A user logins in with a username, and upon  
completion of a typing test, the test is then mapped to that indiviudal user, creating a one-to-many  
relationship between the two models, respectively. The 'Tests' model supports all four CRUD operations,  
while 'Users' supports create and read methods.  

# Installation 

Run `bundle install` to install the required dependencies. To start just the backend, run `bundle exec rake server`  
to run the API, which can be hit from either your browser or an application such as [Postman](https://www.postman.com).  
To run this project with the React site, refer to linked repository above and follow its steps to run an npm server. 