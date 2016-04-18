# filename: spec/spec_helper.rb

require 'selenium-webdriver'

RSpec.configure do |config|

	config.before(:each) do
		case ENV['browser']
		when 'chrome'
			@driver = Selenium::WebDriver.for :chrome
		when 'firefox'
			@driver = Selenium::WebDriver.for :firefox
		end
	end

	config.after(:each) do
		@driver.quit
	end

end

