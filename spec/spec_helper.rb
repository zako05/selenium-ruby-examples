# filename: spec/spec_helper.rb

require 'selenium-webdriver'

RSpec.configure do |config|

	config.before(:each) do

		# case ENV['host']
		# when 'saucelabs'
		# 	caps = Selelnium::WebDriver::Remote::Capabilities.send(ENV['browser'])
		# 	caps.version = ENV['browser_version']
		# 	caps.platform = ENV['operating_system']
		# 	caps[:name] = example.metadata[:full_description]
                #
		# 	@driver = Selenium::WebDriver.for(
		# 		:remote,
		# 		url: "http://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:80/wd/hub",
		# 		desired_capabilities: caps)
		# else
		case ENV['browser']
		when 'chrome'
			@driver = Selenium::WebDriver.for :chrome
		when 'firefox'
			@driver = Selenium::WebDriver.for :firefox
		end
	end

	# config.after(:each) do |example|
	# 	if ENV['host'] == 'saucelabs'
	# 		if example.exception.nil?
	# 			SauceWhisky::Jobs.pass_job @driver.session_id
	# 		else
	# 			SauceWhisky::Jobs.fail_job @driver.session_id
	# 		end
	# 	end
        #
	# 	@driver.quit
	# end
	config.after(:each) do
		@driver.quit
	end

end

