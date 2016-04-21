selenium test examples written in Ruby created based on the book The Selenium Guide Book Edition 2.0.0

* run test: `browser='chrome' rspec -r ./config/local.rb`
* run parallel test:
 	* `parallel_rspec --test-options '-r ./config/local.rb' spec`
	* randomizing (make sure your tests don't have any inter-dependencies - ferret out possible anomalies in your app under test):
		* `parallel_rspec --test-options '-r ./config/local.rb --order random' spec`


