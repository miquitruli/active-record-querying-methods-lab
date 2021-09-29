
class Show < ActiveRecord::Base
    def self.highest_rating # Show.highest_rating returns the rating of the TV show with the highest rating
        Show.maximum(:rating)
    end

    def self.most_popular_show # Show.most_popular_show returns the TV show with the highest rating
        Show.where(rating: highest_rating)[0]
    end

    def self.lowest_rating # Show.lowest_rating returns the rating of the TV show with the lowest rating
        Show.minimum(:rating)
    end

    def self.least_popular_show # Show.least_popular_show returns the TV show with the lowest rating
        Show.where(rating: lowest_rating)[0]
    end

    def self.ratings_sum # Show.ratings_sum returns the sum of all the ratings of all the tv shows
        Show.sum(:rating)
    end

    def self.popular_shows # Show.popular_shows returns an array of all of the shows with a rating above 5
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order # Show.shows_by_alphabetical_order returns an array of all of the shows, listed in alphabetical order
        Show.order(:name)
    end
end