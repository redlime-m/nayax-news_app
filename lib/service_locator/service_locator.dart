import 'dart:io';

import 'package:drift/native.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/data/data_sources/local/database.dart';
import 'package:news_app/data/data_sources/remote/news_service.dart';
import 'package:dio/dio.dart';
import 'package:news_app/data/repository/local/news_repository.dart';
import 'package:news_app/data/repository/remote/news_db_repository.dart';
import 'package:path_provider/path_provider.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<NewsService>(NewsService(sl()));
  sl.registerSingleton<NewsRepository>(NewsRepository(sl()));
  sl.registerSingleton<ArticlesDatabase>(ArticlesDatabase(NativeDatabase(
      File((await getApplicationDocumentsDirectory()).path + '/db.sqlite'))));
  sl.registerSingleton<NewsDBRepository>(NewsDBRepository(sl()));
}
