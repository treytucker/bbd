Given /^the following basics:$/ do |basics|
  Basic.create!(basics.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) basic$/ do |pos|
  visit basics_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following basics:$/ do |expected_basics_table|
  expected_basics_table.diff!(tableish('table tr', 'td,th'))
end

Given /^I am a guest$/ do
  
end

Then /^I should see "([^"]*)" as the header$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

