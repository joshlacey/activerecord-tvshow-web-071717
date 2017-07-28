class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.all.find do |show|
      show.rating == self.highest_rating
    end
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.all.find do |show|
      show.rating == self.lowest_rating
    end
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
    #array with shows with rating >5. use #where method
  end

  def self.shows_by_alphabetical_order
    #array of names, #order method

    self.order(:name)
  end

end
