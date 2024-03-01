import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/styles/text_styles.dart';

class NewsItem extends StatelessWidget {
  final Article _article;

  const NewsItem(this._article, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _renderArticle(),
      ),
    );
  }

  Row _renderArticle() {
    return Row(
      children: [
        Expanded(flex: 1, child: _renderImage()),
        const SizedBox(width: 8),
        Expanded(flex: 3, child: _renderContent()),
      ],
    );
  }

  Column _renderContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_article.title, style: titleStyle),
        Text(_article.author, style: authorStyle),
        Text(_article.description, style: descriptionStyle)
      ],
    );
  }

  Widget _renderImage() {
    final String imageUrl = _article.urlToImage ?? '';
    return imageUrl.isNotEmpty
        ? CachedNetworkImage(
            imageUrl: imageUrl,
            errorWidget: (context, url, error) =>
                const Icon(Icons.error_outline_rounded),
            fit: BoxFit.cover,
          )
        : Image.asset('lib/images/no-image.jpg');
  }
}
