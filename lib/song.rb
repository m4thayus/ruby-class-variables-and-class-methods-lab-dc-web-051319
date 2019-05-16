require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        @@artists << self.artist

        @@genres << self.genre

    end

    def self.count
       @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.each_with_object(count=Hash.new) do |genre|
            unless count.include?(genre)
                count[genre] = 1
            else
                count[genre] += 1
            end
        end
    end

    def self.artist_count
        @@artists.each_with_object(count=Hash.new) do |artist|
            unless count.include?(artist)
                count[artist] = 1
            else
                count[artist] += 1
            end
        end
    end
end
