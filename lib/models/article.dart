class Article {
  // final Source source;
  final String sourceName;
  final String author;
  final String title;
  final String description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String content;

  Article(
      {required this.sourceName,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      this.urlToImage,
      required this.content,
      required this.publishedAt});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      sourceName: json['source']['name'] ?? '',
      author: json['author'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );
  }
  Map<String, dynamic> toJson() => <String, dynamic>{
        'author': author,
        'title': title,
        'description': description,
        'url': url,
        'urlToImage': urlToImage,
        'publishedAt': publishedAt,
        'content': content,
      };
}
