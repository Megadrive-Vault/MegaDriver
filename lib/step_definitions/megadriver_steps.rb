# -*- coding: utf-8 -*-

Given /^"([^"]*)" is in control$/ do |client|
  Capybara.session_name = client
end

Given /^another client is in control$/ do
  @other += 1
  Capybara.session_name = "client_#{@other}"
end