require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "faker"
require "cpf_faker"
require "report_builder"
require "rspec"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 5
end

# EL = YAML.load_file("./data/element.yml")

EL = YAML.load_file(File.join(Dir.pwd, "features/data/element.yml"))