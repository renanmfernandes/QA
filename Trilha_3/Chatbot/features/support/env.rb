require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "faker"
require "cpf_faker"
require "report_builder"
require "rspec"

case ENV["BROWSER"]
when "chrome"
  @driver = :selenium_chrome
when "headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--headless"
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
      options.add_argument "--disable-dev-shm-usage"
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
else
  puts "Invalid browser"
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.default_max_wait_time = 5
end

EL = YAML.load_file(File.join(Dir.pwd, "features/data/element.yml"))
