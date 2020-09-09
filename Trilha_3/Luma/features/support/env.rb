require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "faker"
require "cpf_faker"
require "report_builder"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 5
  end