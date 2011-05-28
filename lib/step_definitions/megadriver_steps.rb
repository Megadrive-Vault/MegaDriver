Given /^"([^"]*)" is in control$/ do |client|
  Capybara.session_name = client
end

Given /^another client is in control$/
  @other += 1
  Capybara.session_name = "client_#{@other}"
end