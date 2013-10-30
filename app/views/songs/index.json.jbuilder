json.array!(@songs) do |song|
  json.extract! song, :title, :artist, :albumtitle, :prodyear, :bpm, :key
  json.url song_url(song, format: :json)
end
