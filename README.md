Following is the step by step structure and workflow of the project - 

1. Navigate to the project folder and run bundle install  
2. Run bundle update in order to update gems
3. Now, run rake db:migrate in order to establish a connection between model and database
4. Seeds.rb has been configured to populate our database with 5 number of cabs.
5. Run rake db:seed in order to populate the db. 
6. Following are the APIs - 

POST - /ride -  Assigns a cab if avaliable -      {"ride"=>{"latitude"=>"3", "longitude"=>"4"}}

PUT	 - /ride/:id/start_ride	- Starts a ride		

PUT	 - /ride/:id/end_ride	- Ends an active ride-  {"ride"=>{"latitude"=>"30", "longitude"=>"2"}}
GET  - /ride/:id/fare		  - Gives total fare of the ride	

