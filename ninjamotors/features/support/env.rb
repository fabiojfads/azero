require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'http://ninjamotors.herokuapp.com'
end

Capybara.default_max_wait_time = 5