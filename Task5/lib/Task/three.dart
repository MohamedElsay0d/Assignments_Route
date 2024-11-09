class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, {this.rating = 'PG'});

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];
    for (var movie in movies) {
      if (movie.rating.contains('PG')) {
        pgMovies.add(movie);
      }
    }
    return pgMovies;
  }
}

void main() {
  final movie = Movie('Casino Royale', 'Eon Productions', rating: 'PG13');

  print('Movie Title: ${movie.title}');
  print('Movie Studio: ${movie.studio}');
  print('Movie Rating: ${movie.rating}');

  final movies = [
    Movie('The Dark Knight', 'Warner Bros.', rating: 'PG13'),
    Movie('Inception', 'Warner Bros.', rating: 'PG13'),
    Movie('Toy Story', 'Pixar', rating: 'G'),
    Movie('Up', 'Pixar', rating: 'PG')
  ];

  final pgMovies = Movie.getPG(movies);
  print('PG Movies:');
  for (final movie in pgMovies) {
    print('- ${movie.title}');
  }
}
