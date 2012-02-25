Given /^that show has a season:$/ do |table|
  table.hashes.each do |attributes|
    @show.seasons.create!(attributes)
  end
end
