import 'package:flutter/material.dart';
import 'package:news_app/blocs/news_bloc/news_bloc_provider.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/screens/main_screen/widgets/app_button.dart';
import 'package:news_app/screens/main_screen/widgets/news_item.dart';
import 'package:news_app/styles/text_styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderAppBar(),
      body: Column(
        children: [
          _renderButtonsRow(context),
          _renderNews(context),
        ],
      ),
    );
  }

  StreamBuilder<bool> _renderNews(BuildContext context) {
    return StreamBuilder(
      stream: NewsBlocProvider.of(context).clearListStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == true) {
          return _renderEmptyList();
        }
        return StreamBuilder(
          stream: NewsBlocProvider.of(context).articlesStream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            return _renderNewsList(snapshot.data, context);
          },
        );
      },
    );
  }

  Text _renderEmptyList() {
    return Text(
      'No News Here. \nChoose news type to display',
      style: descriptionStyle,
      textAlign: TextAlign.center,
    );
  }

  Padding _renderButtonsRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _renderClearButton(context),
          const SizedBox(width: 10),
          _renderFlutterButton(context),
          const SizedBox(width: 10),
          _renderRandomButton(context),
        ],
      ),
    );
  }

  Widget _renderRandomButton(BuildContext context) {
    return AppButton(
        title: 'Random',
        onClicked: () {
          NewsBlocProvider.of(context).getRandomArticles();
        });
  }

  Widget _renderFlutterButton(BuildContext context) {
    return AppButton(
        title: 'Flutter',
        onClicked: () {
          NewsBlocProvider.of(context).getArticles();
        });
  }

  Widget _renderClearButton(BuildContext context) {
    return AppButton(
        title: 'Clear',
        onClicked: () {
          NewsBlocProvider.of(context).clear();
        });
  }

  AppBar _renderAppBar() {
    return AppBar(
        centerTitle: true,
        title: Text(
          'The Flutter News App',
          style: appBarTitleStyle,
        ));
  }

  Widget _renderNewsList(List<Article> newsList, BuildContext context) {
    return newsList.isEmpty
        ? _renderErrorMessage()
        : _renderArticles(context, newsList);
  }

  Expanded _renderArticles(BuildContext context, List<Article> newsList) {
    return Expanded(
      child: Directionality(
        textDirection: NewsBlocProvider.of(context).isRTL
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return NewsItem(newsList[index]);
            }),
      ),
    );
  }

  Padding _renderErrorMessage() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        'Oops \nSomething went wrong. \nPlease check your internet connection and try again',
        style: descriptionStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
