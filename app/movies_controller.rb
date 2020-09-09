def can_be_instantiated_and_then_saved
  movie = Movie.new
  movie.title = "This is a title."
  movie.save 
end

def can_be_created_with_a_hash_of_attributes
  attributes = {
      title: "The Sting",
      release_date: 1973,
      director: "George Roy Hill",
      lead: "Paul Newman",
      in_theaters: false
  }
  movie = Movie.create(attributes)
end
def can_be_created_in_a_block
  Movie.create do |m|
    m.title = "Woo!" 
  end
end

def can_get_the_first_item_in_the_database
  Movie.first.title 
end

def can_get_the_last_item_in_the_database
  Movie.last.title 
end

def can_get_size_of_the_database
  Movie.all.size 
end
def can_find_the_first_item_from_the_database_using_id
  Movie.find(1).title 
end

def can_find_by_different_attributes
  # title == "Title"
  # release_date == 2000, 
  # director == "Me"
  Movie.find_by(title: "Title")
  Movie.find_by(release_date: "2000")
  Movie.find_by(director: "Me")
end

def can_find_using_where_clause_and_be_sorted
  # For this test return all movies released after 2002 and ordered by 
  # release date descending
  movie = Movie.where("release_date > 2002").order(release_date: :desc)
end