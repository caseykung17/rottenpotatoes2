more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'}
  {:title => 'Spirited Away', :rating => 'PG',
    :release_date => '20-Dec-2001'}
  {:title => 'Dune: Part One', :rating => 'PG-13',
    :release_date => '22-Oct-2021'}
  {:title => 'Howl\'s Moving Castle', :rating => 'PG',
    :release_date => '24-Feb-2005'}
  {:title => 'Kingsman: The Secret Service', :rating => 'M18',
    :release_date => '12-Feb-2015'}
]

more_movies.each do |movie|
  Movie.find_or_create_by(title: movie[:title], release_date: movie[:release_date]) do |diff_movie|
    movie.rating = diff_movie[:rating]
  end
end
