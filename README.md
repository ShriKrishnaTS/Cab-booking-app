You are the proprietor of füber, an on call taxi service.
You have a fleet of cabs at your disposal, and each cab has a location, determined by it’s latitude and longitude.
A customer can call one of your taxis by providing their location, and you must assign the nearest taxi to the customer.
Some customers are particular that they only ride around in pink cars, for hipster reasons. You must support this ability.
When the cab is assigned to the customer, it can no longer pick up any other customers
If there are no taxis available, you reject the customer's request.
The customer ends the ride at some location. The cab waits around outside the customer’s house, and is available to be assigned to another customer.


Following is the step by step procedure to run this project - 

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


Following are the assumptions made throughout the project - 
1. Unfortunately, earth is considered to be flat. Meaning, the distance between the source and destination is calculated using pythagoras theorem 
2. The formula used for this calculation is "Math.sqrt((x1 - x2)**2 + (y1 - y2)**2).round(2)"


