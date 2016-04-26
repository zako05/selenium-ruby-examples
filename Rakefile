# filename: Rakefile

def launch_with(config_filename)
	system("parallel_rspec --test-options '-r ./config/#{config_filename} --order random' spec")
end

namespace :local do
	BROWSER_LOCAL = ['firefox', 'chrome']
	BROWSER_LOCAL.each do |browser|
		desc "Run tests locally on #{browser.capitalize}"
		task browser.to_sym do 
			ENV['browser'] = browser
			launch_with('local.rb')
		end
	end
end

# desc 'Run tests locally'
# task :local, :browser do |t, args|
# 	ENV['browser'] = args[:browser]
# 	launch_with('local.rb')
# end

namespace :cloud do
	BROWSER_CLOUD = ['firefox', 'chrome', 'internet-explorer']
	BROWSER_CLOUD.each do |browser|
		desc "Run tests in Sauce Labs on #{browser.capitalize}"
		task browser.to_sym, :version, :os do |t, args|
			ENV['browser_version'] = args[:version]
			ENV['operating_version'] = args[:os]
			launch_with('cloud')
		end
	end
end

# desc "Run tests in Sauc Labs"
# task :cloud do
# 	launch_with('cloud.rb')
# end
