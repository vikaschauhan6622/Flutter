// import 'dart:async';
//
// import 'package:creato/api_calling/api_response.dart';
// import 'package:creato/repository/user_exist_repository.dart';
//
// class UserExistBloc {
//   UserExistRepository? _userExistRepository;
//
//   StreamController? _userExistController;
//
//   StreamSink<ApiResponse<List<>>> get movieListSink =>
//       _movieListController.sink;
//
//   Stream<ApiResponse<List<Movie>>> get movieListStream =>
//       _movieListController.stream;
//
//   MovieBloc() {
//     _movieListController = StreamController<ApiResponse<List<Movie>>>();
//     _movieRepository = MovieRepository();
//     fetchMovieList();
//   }
//
//   fetchMovieList() async {
//     movieListSink.add(ApiResponse.loading('Fetching Popular Movies'));
//     try {
//       List<Movie> movies = await _movieRepository.fetchMovieList();
//       movieListSink.add(ApiResponse.completed(movies));
//     } catch (e) {
//       movieListSink.add(ApiResponse.error(e.toString()));
//       print(e);
//     }
//   }
//
//   dispose() {
//     _movieListController?.close();
//   }
// }
