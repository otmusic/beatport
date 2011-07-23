module Beatport
  class Track < Item
    has_many :genres
    has_many :artists
    has_many :charts
    has_one :release
    has_one :label
    
    
    # Returns the track with the given id
    def self.find(id)
      Client.retrieve('tracks', Track, :id => id).first
    end
  
    # Returns all the tracks matching the criterea
    def self.all(*args)
      Client.retrieve 'tracks', Track, *args
    end    
    
  end
end