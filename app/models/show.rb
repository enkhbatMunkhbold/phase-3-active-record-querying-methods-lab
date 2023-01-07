require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum('rating')
  end

  def self.most_popular_show
    highest_rate = {rating: Show.highest_rating}
    Show.find_by(highest_rate)
  end

  def self.lowest_rating
    Show.minimum('rating')
  end

  def self.least_popular_show
    least_rate = {rating: Show.lowest_rating}
    Show.find_by(least_rate)
  end

  def self.ratings_sum
    Show.sum('rating')
  end

  def self.popular_shows
    Show.where('rating > 5')
  end

  def self.shows_by_alphabetical_order
    Show.reorder('name ASC')
  end
end