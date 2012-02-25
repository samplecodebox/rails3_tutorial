Factory.define :episode do |episode|
  episode.name 'Tom&Jerry'
  episode.description 'Episode1 of '
  episode.number '1'
  episode.language 'English'
  episode.association :season
end