require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'webdrivers'

$browser = ENV['BROWSER']

Capybara.default_driver = :selenium 
Capybara.app_host = ENV['host']

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: $browser.to_sym)
end
  