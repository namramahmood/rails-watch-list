# frozen_string_literal: true

# The MovieList class represents a list of movies, such as genres or user-specific lists.
# MovieLists can have many movies through bookmarks, allowing for categorization and management of movies.
#
# Attributes:
#   name (string): The name of the movie list (e.g., "Comedy", "To Rewatch").
class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :movie_lists, through: :bookmarks
end
