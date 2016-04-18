# filename: spec/login_spec.rb

require_relative 'spec_helper'
require_relative '../pages/login'

describe 'Login' do

before(:each) do
	# @driver = Selenium::WebDriver.for :chrome
	@login = Login.new(@driver)
end

# after(:each) do
# 	@driver.quit
# end

it 'succeeded' do
	@login.with('tomsmith', 'SuperSecretPassword!')
	expect(@login.success_message_present?).to eql true
end

it 'failed' do
	@login.with('asdf','asdf')
	expect(@login.failure_message_present?).to eql true
	# expect(@login.success_message_present?).to eql false
end

end
