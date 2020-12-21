class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre

    def self.select_artists_array
        arr = []
        artists = Artist.all
        artists.each do |a|
            option = a.name
            value = a.id
            arr << [option, value]
        end
        arr
    end
    
    def self.select_genres_array
        arr = []
        genres = Genre.all
        genres.each do |g|
            option = g.name
            value = g.id
            arr << [option, value]
        end
        arr
    end
end
