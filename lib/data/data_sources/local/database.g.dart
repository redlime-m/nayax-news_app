// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TopArticlesTableTable extends TopArticlesTable
    with TableInfo<$TopArticlesTableTable, TopArticlesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TopArticlesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sourceNameMeta =
      const VerificationMeta('sourceName');
  @override
  late final GeneratedColumn<String> sourceName = GeneratedColumn<String>(
      'source_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlToImageMeta =
      const VerificationMeta('urlToImage');
  @override
  late final GeneratedColumn<String> urlToImage = GeneratedColumn<String>(
      'url_to_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _publishedAtMeta =
      const VerificationMeta('publishedAt');
  @override
  late final GeneratedColumn<String> publishedAt = GeneratedColumn<String>(
      'published_at', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        sourceName,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'top_articles_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<TopArticlesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('source_name')) {
      context.handle(
          _sourceNameMeta,
          sourceName.isAcceptableOrUnknown(
              data['source_name']!, _sourceNameMeta));
    } else if (isInserting) {
      context.missing(_sourceNameMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('url_to_image')) {
      context.handle(
          _urlToImageMeta,
          urlToImage.isAcceptableOrUnknown(
              data['url_to_image']!, _urlToImageMeta));
    } else if (isInserting) {
      context.missing(_urlToImageMeta);
    }
    if (data.containsKey('published_at')) {
      context.handle(
          _publishedAtMeta,
          publishedAt.isAcceptableOrUnknown(
              data['published_at']!, _publishedAtMeta));
    } else if (isInserting) {
      context.missing(_publishedAtMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TopArticlesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TopArticlesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sourceName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_name'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      urlToImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url_to_image'])!,
      publishedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}published_at'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $TopArticlesTableTable createAlias(String alias) {
    return $TopArticlesTableTable(attachedDatabase, alias);
  }
}

class TopArticlesTableData extends DataClass
    implements Insertable<TopArticlesTableData> {
  final int id;
  final String sourceName;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;
  const TopArticlesTableData(
      {required this.id,
      required this.sourceName,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['source_name'] = Variable<String>(sourceName);
    map['author'] = Variable<String>(author);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['url'] = Variable<String>(url);
    map['url_to_image'] = Variable<String>(urlToImage);
    map['published_at'] = Variable<String>(publishedAt);
    map['content'] = Variable<String>(content);
    return map;
  }

  TopArticlesTableCompanion toCompanion(bool nullToAbsent) {
    return TopArticlesTableCompanion(
      id: Value(id),
      sourceName: Value(sourceName),
      author: Value(author),
      title: Value(title),
      description: Value(description),
      url: Value(url),
      urlToImage: Value(urlToImage),
      publishedAt: Value(publishedAt),
      content: Value(content),
    );
  }

  factory TopArticlesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TopArticlesTableData(
      id: serializer.fromJson<int>(json['id']),
      sourceName: serializer.fromJson<String>(json['sourceName']),
      author: serializer.fromJson<String>(json['author']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      url: serializer.fromJson<String>(json['url']),
      urlToImage: serializer.fromJson<String>(json['urlToImage']),
      publishedAt: serializer.fromJson<String>(json['publishedAt']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sourceName': serializer.toJson<String>(sourceName),
      'author': serializer.toJson<String>(author),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'url': serializer.toJson<String>(url),
      'urlToImage': serializer.toJson<String>(urlToImage),
      'publishedAt': serializer.toJson<String>(publishedAt),
      'content': serializer.toJson<String>(content),
    };
  }

  TopArticlesTableData copyWith(
          {int? id,
          String? sourceName,
          String? author,
          String? title,
          String? description,
          String? url,
          String? urlToImage,
          String? publishedAt,
          String? content}) =>
      TopArticlesTableData(
        id: id ?? this.id,
        sourceName: sourceName ?? this.sourceName,
        author: author ?? this.author,
        title: title ?? this.title,
        description: description ?? this.description,
        url: url ?? this.url,
        urlToImage: urlToImage ?? this.urlToImage,
        publishedAt: publishedAt ?? this.publishedAt,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('TopArticlesTableData(')
          ..write('id: $id, ')
          ..write('sourceName: $sourceName, ')
          ..write('author: $author, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('publishedAt: $publishedAt, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, sourceName, author, title, description,
      url, urlToImage, publishedAt, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TopArticlesTableData &&
          other.id == this.id &&
          other.sourceName == this.sourceName &&
          other.author == this.author &&
          other.title == this.title &&
          other.description == this.description &&
          other.url == this.url &&
          other.urlToImage == this.urlToImage &&
          other.publishedAt == this.publishedAt &&
          other.content == this.content);
}

class TopArticlesTableCompanion extends UpdateCompanion<TopArticlesTableData> {
  final Value<int> id;
  final Value<String> sourceName;
  final Value<String> author;
  final Value<String> title;
  final Value<String> description;
  final Value<String> url;
  final Value<String> urlToImage;
  final Value<String> publishedAt;
  final Value<String> content;
  const TopArticlesTableCompanion({
    this.id = const Value.absent(),
    this.sourceName = const Value.absent(),
    this.author = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    this.urlToImage = const Value.absent(),
    this.publishedAt = const Value.absent(),
    this.content = const Value.absent(),
  });
  TopArticlesTableCompanion.insert({
    this.id = const Value.absent(),
    required String sourceName,
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  })  : sourceName = Value(sourceName),
        author = Value(author),
        title = Value(title),
        description = Value(description),
        url = Value(url),
        urlToImage = Value(urlToImage),
        publishedAt = Value(publishedAt),
        content = Value(content);
  static Insertable<TopArticlesTableData> custom({
    Expression<int>? id,
    Expression<String>? sourceName,
    Expression<String>? author,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? url,
    Expression<String>? urlToImage,
    Expression<String>? publishedAt,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sourceName != null) 'source_name': sourceName,
      if (author != null) 'author': author,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (url != null) 'url': url,
      if (urlToImage != null) 'url_to_image': urlToImage,
      if (publishedAt != null) 'published_at': publishedAt,
      if (content != null) 'content': content,
    });
  }

  TopArticlesTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? sourceName,
      Value<String>? author,
      Value<String>? title,
      Value<String>? description,
      Value<String>? url,
      Value<String>? urlToImage,
      Value<String>? publishedAt,
      Value<String>? content}) {
    return TopArticlesTableCompanion(
      id: id ?? this.id,
      sourceName: sourceName ?? this.sourceName,
      author: author ?? this.author,
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      urlToImage: urlToImage ?? this.urlToImage,
      publishedAt: publishedAt ?? this.publishedAt,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sourceName.present) {
      map['source_name'] = Variable<String>(sourceName.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (urlToImage.present) {
      map['url_to_image'] = Variable<String>(urlToImage.value);
    }
    if (publishedAt.present) {
      map['published_at'] = Variable<String>(publishedAt.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TopArticlesTableCompanion(')
          ..write('id: $id, ')
          ..write('sourceName: $sourceName, ')
          ..write('author: $author, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('publishedAt: $publishedAt, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class $RandomArticlesTableTable extends RandomArticlesTable
    with TableInfo<$RandomArticlesTableTable, RandomArticlesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RandomArticlesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _sourceNameMeta =
      const VerificationMeta('sourceName');
  @override
  late final GeneratedColumn<String> sourceName = GeneratedColumn<String>(
      'source_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlToImageMeta =
      const VerificationMeta('urlToImage');
  @override
  late final GeneratedColumn<String> urlToImage = GeneratedColumn<String>(
      'url_to_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _publishedAtMeta =
      const VerificationMeta('publishedAt');
  @override
  late final GeneratedColumn<String> publishedAt = GeneratedColumn<String>(
      'published_at', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        sourceName,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'random_articles_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<RandomArticlesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('source_name')) {
      context.handle(
          _sourceNameMeta,
          sourceName.isAcceptableOrUnknown(
              data['source_name']!, _sourceNameMeta));
    } else if (isInserting) {
      context.missing(_sourceNameMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('url_to_image')) {
      context.handle(
          _urlToImageMeta,
          urlToImage.isAcceptableOrUnknown(
              data['url_to_image']!, _urlToImageMeta));
    } else if (isInserting) {
      context.missing(_urlToImageMeta);
    }
    if (data.containsKey('published_at')) {
      context.handle(
          _publishedAtMeta,
          publishedAt.isAcceptableOrUnknown(
              data['published_at']!, _publishedAtMeta));
    } else if (isInserting) {
      context.missing(_publishedAtMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RandomArticlesTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RandomArticlesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      sourceName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_name'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      urlToImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url_to_image'])!,
      publishedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}published_at'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $RandomArticlesTableTable createAlias(String alias) {
    return $RandomArticlesTableTable(attachedDatabase, alias);
  }
}

class RandomArticlesTableData extends DataClass
    implements Insertable<RandomArticlesTableData> {
  final int id;
  final String sourceName;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;
  const RandomArticlesTableData(
      {required this.id,
      required this.sourceName,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['source_name'] = Variable<String>(sourceName);
    map['author'] = Variable<String>(author);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['url'] = Variable<String>(url);
    map['url_to_image'] = Variable<String>(urlToImage);
    map['published_at'] = Variable<String>(publishedAt);
    map['content'] = Variable<String>(content);
    return map;
  }

  RandomArticlesTableCompanion toCompanion(bool nullToAbsent) {
    return RandomArticlesTableCompanion(
      id: Value(id),
      sourceName: Value(sourceName),
      author: Value(author),
      title: Value(title),
      description: Value(description),
      url: Value(url),
      urlToImage: Value(urlToImage),
      publishedAt: Value(publishedAt),
      content: Value(content),
    );
  }

  factory RandomArticlesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RandomArticlesTableData(
      id: serializer.fromJson<int>(json['id']),
      sourceName: serializer.fromJson<String>(json['sourceName']),
      author: serializer.fromJson<String>(json['author']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      url: serializer.fromJson<String>(json['url']),
      urlToImage: serializer.fromJson<String>(json['urlToImage']),
      publishedAt: serializer.fromJson<String>(json['publishedAt']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sourceName': serializer.toJson<String>(sourceName),
      'author': serializer.toJson<String>(author),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'url': serializer.toJson<String>(url),
      'urlToImage': serializer.toJson<String>(urlToImage),
      'publishedAt': serializer.toJson<String>(publishedAt),
      'content': serializer.toJson<String>(content),
    };
  }

  RandomArticlesTableData copyWith(
          {int? id,
          String? sourceName,
          String? author,
          String? title,
          String? description,
          String? url,
          String? urlToImage,
          String? publishedAt,
          String? content}) =>
      RandomArticlesTableData(
        id: id ?? this.id,
        sourceName: sourceName ?? this.sourceName,
        author: author ?? this.author,
        title: title ?? this.title,
        description: description ?? this.description,
        url: url ?? this.url,
        urlToImage: urlToImage ?? this.urlToImage,
        publishedAt: publishedAt ?? this.publishedAt,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('RandomArticlesTableData(')
          ..write('id: $id, ')
          ..write('sourceName: $sourceName, ')
          ..write('author: $author, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('publishedAt: $publishedAt, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, sourceName, author, title, description,
      url, urlToImage, publishedAt, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RandomArticlesTableData &&
          other.id == this.id &&
          other.sourceName == this.sourceName &&
          other.author == this.author &&
          other.title == this.title &&
          other.description == this.description &&
          other.url == this.url &&
          other.urlToImage == this.urlToImage &&
          other.publishedAt == this.publishedAt &&
          other.content == this.content);
}

class RandomArticlesTableCompanion
    extends UpdateCompanion<RandomArticlesTableData> {
  final Value<int> id;
  final Value<String> sourceName;
  final Value<String> author;
  final Value<String> title;
  final Value<String> description;
  final Value<String> url;
  final Value<String> urlToImage;
  final Value<String> publishedAt;
  final Value<String> content;
  const RandomArticlesTableCompanion({
    this.id = const Value.absent(),
    this.sourceName = const Value.absent(),
    this.author = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    this.urlToImage = const Value.absent(),
    this.publishedAt = const Value.absent(),
    this.content = const Value.absent(),
  });
  RandomArticlesTableCompanion.insert({
    this.id = const Value.absent(),
    required String sourceName,
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  })  : sourceName = Value(sourceName),
        author = Value(author),
        title = Value(title),
        description = Value(description),
        url = Value(url),
        urlToImage = Value(urlToImage),
        publishedAt = Value(publishedAt),
        content = Value(content);
  static Insertable<RandomArticlesTableData> custom({
    Expression<int>? id,
    Expression<String>? sourceName,
    Expression<String>? author,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? url,
    Expression<String>? urlToImage,
    Expression<String>? publishedAt,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sourceName != null) 'source_name': sourceName,
      if (author != null) 'author': author,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (url != null) 'url': url,
      if (urlToImage != null) 'url_to_image': urlToImage,
      if (publishedAt != null) 'published_at': publishedAt,
      if (content != null) 'content': content,
    });
  }

  RandomArticlesTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? sourceName,
      Value<String>? author,
      Value<String>? title,
      Value<String>? description,
      Value<String>? url,
      Value<String>? urlToImage,
      Value<String>? publishedAt,
      Value<String>? content}) {
    return RandomArticlesTableCompanion(
      id: id ?? this.id,
      sourceName: sourceName ?? this.sourceName,
      author: author ?? this.author,
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      urlToImage: urlToImage ?? this.urlToImage,
      publishedAt: publishedAt ?? this.publishedAt,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sourceName.present) {
      map['source_name'] = Variable<String>(sourceName.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (urlToImage.present) {
      map['url_to_image'] = Variable<String>(urlToImage.value);
    }
    if (publishedAt.present) {
      map['published_at'] = Variable<String>(publishedAt.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RandomArticlesTableCompanion(')
          ..write('id: $id, ')
          ..write('sourceName: $sourceName, ')
          ..write('author: $author, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('publishedAt: $publishedAt, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

abstract class _$ArticlesDatabase extends GeneratedDatabase {
  _$ArticlesDatabase(QueryExecutor e) : super(e);
  late final $TopArticlesTableTable topArticlesTable =
      $TopArticlesTableTable(this);
  late final $RandomArticlesTableTable randomArticlesTable =
      $RandomArticlesTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [topArticlesTable, randomArticlesTable];
}
