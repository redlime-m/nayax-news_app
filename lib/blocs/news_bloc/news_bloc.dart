import 'package:news_app/constants/constants.dart';
import 'package:news_app/data/repository/local/news_repository.dart';
import 'package:news_app/data/repository/remote/news_db_repository.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/service_locator/service_locator.dart';
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

  final NewsRepository _remoteRepository = sl();
  final NewsDBRepository _dbRepository = sl();
  bool isLoading = false;
  bool isRTL = false;

  final _articlesSubject = BehaviorSubject<List<Article>?>.seeded(null);
  final _clearListSubject = BehaviorSubject<bool>.seeded(false);

  Stream<List<Article>?> get articlesStream => _articlesSubject.stream;
  Stream<bool> get clearListStream => _clearListSubject.stream;

  void init() async {
    await getArticles();
  }

  Future<void> getArticles() async {
    if (isLoading) {
      return;
    }
    isLoading = true;
    _articlesSubject.sink.add(null);
    _clearListSubject.sink.add(false);
    isRTL = false;
    List<Article> articles = await _remoteRepository.getArticles(firstQueryKey);
    articles.addAll(await _remoteRepository.getArticles(secondQueryKey));
    if (articles.isEmpty) {
      _articlesSubject.sink.add(await _dbRepository.getTopArticleDB());
    } else {
      _articlesSubject.sink.add(articles);
      _dbRepository.storeInTopDb(articles);
    }
    isLoading = false;
  }

  Future<void> getRandomArticles() async {
    if (isLoading) {
      return;
    }
    isLoading = true;
    _articlesSubject.sink.add(null);
    _clearListSubject.sink.add(false);
    isRTL = true;
    List<Article> articles = await _remoteRepository.getRandomArticles();

    if (articles.isEmpty) {
      _articlesSubject.sink.add(await _dbRepository.getRandomArticleDB());
    } else {
      _articlesSubject.sink.add(articles);
      _dbRepository.storeInRandomDb(articles);
    }

    isLoading = false;
  }

  dispose() {
    _articlesSubject.close();
  }

  void clear() {
    _articlesSubject.sink.add([]);
    _clearListSubject.sink.add(true);
    isRTL = false;
    isLoading = false;
  }
}
