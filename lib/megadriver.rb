# encoding: utf-8

require 'capybara'
require "capybara/megadriver/driver"

Capybara.register_driver :megadriver do |app|
  Capybara::MegaDriver::Driver.new(app)
end