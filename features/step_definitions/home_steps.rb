Given /^I am the about us page$/ do
end

Given /^I am the services page$/ do
end

Given /^I am the news page$/ do
  Factory(:article)
end

Given /^I am the site map page$/ do
  Factory(:article)
  Factory(:page)
  Factory(:category)
end