Given /I go to Google/ do
  @page = GooglePage.new
  @page.load()
end
  
When /I search "([^\"]*)"/ do |text|
  @page.input.send_keys(text, :enter)
end

When /I should see a hyperlink to "([^\"]*)"/ do |url|
  expect(@page).to have_hyperlink_to(url)
end