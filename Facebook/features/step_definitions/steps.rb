Then /^I Login in Facebook$/ do
  driver = $driver
  driver.get "https://www.facebook.com"

  element = driver.find_element :id => "email"
  element.send_keys "SOME_USER"
  element = driver.find_element :id => "pass"
  element.send_keys "SOME_PASSWORD"
  element = driver.find_element :id => "loginbutton"
  element.click
  sleep 2

end


Then /^I Login in Gmail as me$/ do
  driver = $driver
  driver.get "https://www.gmail.com"

  element = driver.find_element :id => "Email"
  element.send_keys "SOME_USER"
  element = driver.find_element :id => "next"
  element.click
  sleep 2
  element = driver.find_element :id => "Passwd"
  element.send_keys "SOME_PASSWORD"
  element = driver.find_element :id => "signIn"
  element.click

end

Then /^I Launch the website$/ do
  driver = $driver
  driver.get "https://www.skyscanner.net"

end