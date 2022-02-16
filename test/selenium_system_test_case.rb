require "application_system_test_case"

class SeleniumSystemTestCase < ApplicationSystemTestCase
  driven_by :selenium_headless, using: :chromium, screen_size: [1400, 1400]
end