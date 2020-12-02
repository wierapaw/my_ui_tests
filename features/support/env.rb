require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'byebug'
require 'selenium/webdriver'

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[disable-gpu disable-dev-shm-usage disable-software-rasterizer no-sandbox] }
  )

  Capybara::Selenium::Driver.new app,
                                 browser: :chrome,
                                 desired_capabilities: capabilities
end
Capybara.javascript_driver = :headless_chrome
Capybara.default_driver = :headless_chrome
Capybara.default_max_wait_time = 5
Capybara.app_host = 'https://fast-meadow-88078.herokuapp.com/'
Capybara.save_path = Dir.pwd + '/results'
