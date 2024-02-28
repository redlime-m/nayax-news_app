import 'package:dio/dio.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/models/article.dart';

import 'package:retrofit/retrofit.dart';

part 'news_service.g.dart';

@RestApi(baseUrl: newsApiBaseUrl)
abstract class NewsService {
  factory NewsService(Dio dio) = _NewsService;

  @GET(topEndPoint)
  Future<HttpResponse<List<Article>>> getTopArticles({
    @Query('apiKey') String? apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
  });

  @GET(allEndPoint)
  Future<HttpResponse<List<Article>>> getArticles({
    @Query('apiKey') String? apiKey,
    @Query('q') String? keyWord,
  });
}
