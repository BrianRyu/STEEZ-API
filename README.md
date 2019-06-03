# Startup & Install

Run bundle install before starting the server. Front-end is has fetch routes pointing towards http://localhost:3005. 

Rails s -p 3005 in order to connect frontend with API properly.

# Models

There are a total of four (4)  models: Part, Post, Product and User.

User has_many posts.
Product has_many parts and has_many posts through parts.
Post belongs_to user, has_many parts and has_many products through parts.
Part belongs_to post and belongs_to product as a joiner of two.

# Authentication && Authorization

Auth is carried out with JWT. User authentication and authorization includes validations on username and password - JWT token is saved in localstorage. Active model serializers utilized for model associations.

# Database

Initial seed.rb file contains initial data for application functionality. Users have the ability, after authorization and authentication, to import data through the web-app and the data is then persisted to the database, asychronous rendering. 
