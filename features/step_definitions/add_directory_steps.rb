Then /^the database should contain a shoot called "(.*?)"$/ do |name|
  entry=Shoot.find_by_name(name)

end
Then /^the database should contain a photo called "(.*?)"$/ do |name|
  entry=Photo.find_by_fullsize(name)

end

Given /^"(.*?)" is already in the shoots database$/ do |dirname|
  entry=Shoot.new
  entry.name = dirname
  entry.save
end
