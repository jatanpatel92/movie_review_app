class Movie < ActiveRecord::Base
    validates :title, presence: true
	validates :imdb, presence: true, numericality: { greater_than_or_equal_to: 0,less_than_or_equal_to: 10 }
    has_many :reviews, dependent: :destroy
end
