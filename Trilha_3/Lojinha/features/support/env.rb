require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "faker"
require "cpf_faker"
require "report_builder"
require "rspec"
require "httparty"
# require "httparty/request"
# require "httparty/response/headers"

# when "chrome"
#     @driver = :selenium_chrome
#   when "headless"
#     Capybara.register_driver :selenium_chrome_headless do |app|
#       chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
#         options.add_argument "--headless"
#         options.add_argument "--disable-gpu"
#         options.add_argument "--no-sandbox"
#         options.add_argument "--disable-site-isolation-trials"
#         options.add_argument "--disable-dev-shm-usage"
#       end
#       Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
#     end
#     @driver = :selenium_chrome_headless
#   else
#     puts "Invalid browser"
#   end
  
  Capybara.configure do |config|
      config.default_driver = :selenium_chrome
      config.default_max_wait_time = 5
    end
  
  # EL = YAML.load_file("./data/element.yml")
  
#   EL = YAML.load_file(File.join(Dir.pwd, "/data/element.yml"))