Given /^there is a show "([^"]*)"$/ do |name|
  @show = Factory(:show, :name => name)
end

# added steps for the show_listing feature.


# Creates the test data for the shows listing feature.
#  Creates shows, seasons and episodes considering all validations
Given /^I have the following Shows, Seasons, and episodes$/ do |table|
  table.hashes.map do |hash|
     @show = Show.where(:name => hash[:show]).first
     if @show.nil?
       @show = Show.create!(:name => hash[:show])
     end
     season_number = hash[:season].split(" ")[1].to_i
     @season = Season.where(:number => season_number, :show_id => @show.id).first
     if @season.nil?
       @season = Season.create!(:number => season_number, :show_id => @show.id)
     end
     @episode = Episode.where(:name => hash[:episode], :language => hash[:language], :season_id => @season.id).first
     if @episode.nil?
       @episode = Episode.create!(:name => hash[:episode], :language => hash[:language], :season_id => @season.id)
     end
   end
end

When /^(?:|I )request (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^I should only get all shows back$/ do
  Show.all.count.should == page.all('ul#show_list li').size()
end

Then /^I should only get "([^"]*)" back$/ do |show|
  page.should have_content(show)
  page.all('ul#show_list li').size().should == 1
end

