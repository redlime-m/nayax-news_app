import 'package:news_app/data/data_sources/local/database.dart';
import 'package:news_app/models/article.dart';

class NewsDBRepository {
  final ArticlesDatabase _articlesDatabase;

  NewsDBRepository(this._articlesDatabase);

  storeInTopDb(List<Article> articles) async {
    await _articlesDatabase.delete(_articlesDatabase.topArticlesTable).go();
    for (int i = 0; i < articles.length; i++) {
      await _articlesDatabase.into(_articlesDatabase.topArticlesTable).insert(
          TopArticlesTableCompanion.insert(
              sourceName: articles[i].sourceName,
              author: articles[i].author,
              title: articles[i].title,
              description: articles[i].description,
              url: articles[i].url,
              urlToImage: articles[i].urlToImage ?? '',
              publishedAt: articles[i].publishedAt,
              content: articles[i].content));
    }
  }

  storeInRandomDb(List<Article> articles) async {
    await _articlesDatabase.delete(_articlesDatabase.randomArticlesTable).go();
    for (int i = 0; i < articles.length; i++) {
      await _articlesDatabase
          .into(_articlesDatabase.randomArticlesTable)
          .insert(RandomArticlesTableCompanion.insert(
              sourceName: articles[i].sourceName,
              author: articles[i].author,
              title: articles[i].title,
              description: articles[i].description,
              url: articles[i].url,
              urlToImage: articles[i].urlToImage ?? '',
              publishedAt: articles[i].publishedAt,
              content: articles[i].content));
    }
  }

  Future<List<Article>?> getTopArticleDB() async {
    List<TopArticlesTableData>? topArticlesData = await _articlesDatabase
        .select(_articlesDatabase.topArticlesTable)
        .get();
    List<Article> topArticles = [];
    for (int i = 0; i < topArticlesData.length; i++) {
      topArticles.add(Article(
          sourceName: topArticlesData[i].sourceName,
          author: topArticlesData[i].author,
          title: topArticlesData[i].title,
          description: topArticlesData[i].description,
          url: topArticlesData[i].url,
          content: topArticlesData[i].content,
          publishedAt: topArticlesData[i].publishedAt));
    }
    return topArticles;
  }

  Future<List<Article>?> getRandomArticleDB() async {
    List<RandomArticlesTableData>? randomArticlesData = await _articlesDatabase
        .select(_articlesDatabase.randomArticlesTable)
        .get();
    List<Article> randomArticles = [];
    for (int i = 0; i < randomArticlesData.length; i++) {
      randomArticles.add(Article(
          sourceName: randomArticlesData[i].sourceName,
          author: randomArticlesData[i].author,
          title: randomArticlesData[i].title,
          description: randomArticlesData[i].description,
          url: randomArticlesData[i].url,
          content: randomArticlesData[i].content,
          publishedAt: randomArticlesData[i].publishedAt));
    }
    return randomArticles;
  }
}
