import 'package:drift/drift.dart';

part 'database.g.dart';

class TopArticlesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get sourceName => text()();
  TextColumn get author => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get url => text()();
  TextColumn get urlToImage => text()();
  TextColumn get publishedAt => text()();
  TextColumn get content => text()();
}

class RandomArticlesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get sourceName => text()();
  TextColumn get author => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get url => text()();
  TextColumn get urlToImage => text()();
  TextColumn get publishedAt => text()();
  TextColumn get content => text()();
}

@DriftDatabase(tables: [TopArticlesTable, RandomArticlesTable])
class ArticlesDatabase extends _$ArticlesDatabase {
  ArticlesDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
