movies = [
  {
    title: "The Grand Budapest Hotel",
    slug: "the-grand-budapest-hotel",
    synopsis: "A concierge and lobby boy become partners in a caper across a changing Europe.",
    release_year: 2014,
    duration_minutes: 99,
    rating: "R",
    poster_url: "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=900&q=80",
    featured: true
  },
  {
    title: "Arrival",
    slug: "arrival",
    synopsis: "A linguist works with the military to communicate with visitors from beyond Earth.",
    release_year: 2016,
    duration_minutes: 116,
    rating: "PG-13",
    poster_url: "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?auto=format&fit=crop&w=900&q=80",
    featured: true
  },
  {
    title: "In the Mood for Love",
    slug: "in-the-mood-for-love",
    synopsis: "Two neighbors in 1960s Hong Kong form a restrained, aching bond after discovering betrayal.",
    release_year: 2000,
    duration_minutes: 98,
    rating: "PG",
    poster_url: "https://images.unsplash.com/photo-1505686994434-e3cc5abf1330?auto=format&fit=crop&w=900&q=80",
    featured: false
  }
]

movies.each do |attributes|
  movie = Movie.find_or_create_by!(slug: attributes[:slug]) do |record|
    record.assign_attributes(attributes)
  end

  movie.reviews.find_or_create_by!(
    reviewer_name: "Moovie Staff",
    rating: 5,
    body: "A strong catalog pick with plenty to revisit."
  )
end
