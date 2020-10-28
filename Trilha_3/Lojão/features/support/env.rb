require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "faker"
require "cpf_faker"
require "report_builder"
require "rspec"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require_relative "spec_helper/spec_rest"
World(REST)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 5
end

EL = YAML.load_file("./data/element.yml")