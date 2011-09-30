Given /^the following browse_blogs:$/ do |browse_blogs|
  BrowseBlog.create!(browse_blogs.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) browse_blog$/ do |pos|
  visit browse_blogs_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following browse_blogs:$/ do |expected_browse_blogs_table|
  expected_browse_blogs_table.diff!(tableish('table tr', 'td,th'))
end
