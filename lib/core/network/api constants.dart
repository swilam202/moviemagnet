abstract class APIConstants{
  static const String baseURL = 'https://api.themoviedb.org/3';
  static const String baseImageURL = 'https://image.tmdb.org/t/p/w500';
  static const String apiKey = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';
  static const String nowPlayingMoviesLink = '$baseURL/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesLink = '$baseURL/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesLink = '$baseURL/movie/top_rated?api_key=$apiKey';
  static  String getImageLink(String path) => '$baseImageURL$path';
  
  

}