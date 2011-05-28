# encoding: utf-8

require 'capybara/megadriver/driver'
require 'capybara'

Capybara.register_driver :megadriver do |app|
  Capybara::MegaDriver::Driver.new(app)
end

Before do
  Capybara.session_name = :default
  @other = 0
end