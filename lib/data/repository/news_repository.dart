import 'dart:io';
import 'dart:math';

import 'package:news_app/constants/constants.dart';
import 'package:news_app/data/data_sources/remote/news_service.dart';
import 'package:news_app/models/article.dart';
import 'package:dio/dio.dart';

class NewsRepository {
  final NewsService _newsService;

  NewsRepository(this._newsService);

  Future<List<Article>> getRandomArticles() async {
    final List<String> categories = [
      'business',
      'entertainment',
      'general',
      'health',
      'science',
      'sports',
      'technology'
    ];
    final String category = categories[Random().nextInt(categories.length)];
    try {
      final httpResponse = await _newsService.getTopArticles(
          apiKey: apiKey, country: country, category: category);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return httpResponse.data;
      } else {
        return [];
      }
    } on DioException catch (e) {
      print(e.message);
      return [];
    }
  }

  Future<List<Article>> getArticles(String keyWord) async {
    try {
      final httpResponse =
          await _newsService.getArticles(apiKey: apiKey, keyWord: keyWord);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return httpResponse.data;
      } else {
        return [];
      }
    } on DioException catch (e) {
      print(e.message);
      return [];
    }
  }
}
