import 'package:news_app/models/article.dart';
import 'package:rxdart/rxdart.dart';

class NewsBloc {
  static NewsBloc? instance;
  factory NewsBloc() {
    if (instance == null) {
      instance = NewsBloc._();
      instance!.init();
    }
    return instance!;
  }

  NewsBloc._() : super();

  final Requests requests = Requests();
  final ValueNotifier<MoviesFilter> filterNotifier =
      ValueNotifier<MoviesFilter>(MoviesFilter.values.first);
  int page = 1;
  int totalPages = 10;
  bool isLoading = false;

  final _articlesSubject = BehaviorSubject<List<Article>?>.seeded(null);

  Stream<List<Article>?> get articlesStream => _articlesSubject.stream;

  void init() async {
    await fetchArticles();
  }

  Future<void> fetchArticles({bool pagination = false}) async {
    if (page == totalPages || isLoading) {
      return;
    }
    try {
      isLoading = true;
      if (pagination) {
        page++;
      }
      final response = await requests.fetchArticles(filterNotifier.value, page);
      if (response == null) {
        throw Exception('error');
      }
      final int? total = response['total_pages'];
      if (total != null) {
        totalPages = total;
      }
      final List<Article> articles = (response['results'] as List? ?? [])
          .map((e) => Article.fromJson(e))
          .toList();
      if (pagination) {
        _articlesSubject.sink
            .add([..._articlesSubject.value ?? [], ...articles]);
      } else {
        _articlesSubject.sink.add(articles);
      }
      Prefs.setArticles(articles);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      _articlesSubject.sink.add(Prefs.storedArticles);
    }
  }

  void onFilterChange(MoviesFilter filter) {
    page = 1;
    totalPages = 10;
    filterNotifier.value = filter;
    _articlesSubject.sink.add(null);
    fetchArticles();
  }

  dispose() {
    _articlesSubject.close();
  }

  void clear() {
    _articlesSubject.sink.add([]);
    page = 1;
    totalPages = 10;
    isLoading = false;
  }

  // Future<String?> getMovieTrailer(Movie? movie) async {
  //   if (movie == null || movie.id == null) {
  //     return null;
  //   }
  //   try {
  //     final res = await requests.fetchMovieTrailer(movie.id!);
  //     if (res != null && res['results'] != null) {
  //       final trailer = (res['results'] as List).firstWhereOrNull((e) => e['type'] == 'Trailer');
  //       return trailer['key'];
  //     }
  //     return null;
  //   } catch (e) {
  //     return null;
  //   }
  // }
}
