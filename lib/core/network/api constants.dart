abstract class APIConstants{
  static const String baseURL = 'https://api.themoviedb.org/3';
  static const String apiKey = 'b45735ac1dc21f72607b8fc840c72d00';
  static const String nowPlayingMoviesLink = '$baseURL/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesLink = '$baseURL/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesLink = '$baseURL/movie/top_rated?api_key=$apiKey';
}